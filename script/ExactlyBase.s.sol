// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.19;

import { ISablierV2LockupDynamic } from "@sablier/v2-core/src/interfaces/ISablierV2LockupDynamic.sol";
import { Broker, LockupDynamic } from "@sablier/v2-core/src/types/DataTypes.sol";
import { ud2x18, ud60x18 } from "@sablier/v2-core/src/types/Math.sol";
import { IERC20 } from "@sablier/v2-core/src/types/Tokens.sol";
import { BaseScript } from "@sablier/v2-core-script/Base.s.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { TimelockController } from "@openzeppelin/contracts/governance/TimelockController.sol";

abstract contract ExactlyBaseScript is BaseScript {
    using Strings for uint128;
    using Strings for uint40;

    IERC20 public constant EXA = IERC20(0x1e925De1c68ef83bD98eE3E130eF14a50309C01B);
    // https://docs.exact.ly/security/access-control
    address public constant EXACTLY_PROTOCOL_OWNER = 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3;
    TimelockController public constant TIMELOCK_CONTROLLER =
        TimelockController(payable(0x92024C4bDa9DA602b711B9AbB610d072018eb58b));

    // Check the addresses in the docs: https://docs.sablier.com/contracts/v2/deployments
    ISablierV2LockupDynamic public constant SABLIER_LOCKUP_DYNAMIC =
        ISablierV2LockupDynamic(0x6f68516c21E248cdDfaf4898e66b2b0Adee0e0d6);

    Broker public broker = Broker({ account: address(0), fee: ud60x18(0) });

    string public constant CSV_DIR = "out/streams/";
    string private _csv;

    modifier csv(string memory name) {
        _csv = string.concat(CSV_DIR, name, ".csv");
        try vm.removeFile(_csv) { } catch { } // solhint-disable-line no-empty-blocks
        vm.writeLine(_csv, "amount,milestone");
        _;
        delete _csv;
    }

    function setUp() external {
        vm.createSelectFork("optimism", 120_669_554);
        vm.label(address(SABLIER_LOCKUP_DYNAMIC), "SablierV2LockupDynamic");
        vm.label(address(TIMELOCK_CONTROLLER), "TimelockController");
        vm.label(EXACTLY_PROTOCOL_OWNER, "multisig");
        vm.label(address(EXA), "EXA");
        vm.label(
            address(uint160(uint256(vm.load(address(EXA), bytes32(uint256(keccak256("eip1967.proxy.implementation")) - 1))))),
            "EXAImpl"
        );
        vm.createDir(CSV_DIR, true);
    }

    function run() public virtual broadcast {
        LockupDynamic.CreateWithMilestones[] memory usersParams = getUsersParams();

        TIMELOCK_CONTROLLER.schedule(
            address(EXA),
            0,
            abi.encodeCall(EXA.approve, (address(SABLIER_LOCKUP_DYNAMIC), aggregateAmount())),
            0,
            0,
            24 hours
        );

        for (uint256 i = 0; i < usersParams.length; ++i) {
            TIMELOCK_CONTROLLER.schedule(
                address(SABLIER_LOCKUP_DYNAMIC),
                0,
                abi.encodeCall(SABLIER_LOCKUP_DYNAMIC.createWithMilestones, (usersParams[i])),
                0,
                bytes32(i),
                24 hours
            );
        }

        if (vm.envOr("SIMULATE_EXECUTION", false)) {
            vm.stopBroadcast();
            vm.warp(block.timestamp + 24 hours);
            vm.startBroadcast(EXACTLY_PROTOCOL_OWNER);

            TIMELOCK_CONTROLLER.execute(
                address(EXA), 0, abi.encodeCall(EXA.approve, (address(SABLIER_LOCKUP_DYNAMIC), aggregateAmount())), 0, 0
            );
            for (uint256 i = 0; i < usersParams.length; ++i) {
                TIMELOCK_CONTROLLER.execute(
                    address(SABLIER_LOCKUP_DYNAMIC),
                    0,
                    abi.encodeCall(SABLIER_LOCKUP_DYNAMIC.createWithMilestones, (usersParams[i])),
                    0,
                    bytes32(i)
                );
            }
        }
    }

    function aggregateAmount() public pure virtual returns (uint128);

    function getUsersParams() public virtual returns (LockupDynamic.CreateWithMilestones[] memory);

    function format(string calldata str) external pure returns (string memory) {
        return string.concat(str[:bytes(str).length - 18], ".", str[bytes(str).length - 18:]);
    }

    function getSegment(uint128 amount, uint40 milestone) public returns (LockupDynamic.Segment memory) {
        vm.writeLine(_csv, string.concat(this.format(amount.toString()), ",", milestone.toString()));
        LockupDynamic.Segment memory segment =
            LockupDynamic.Segment({ amount: amount, milestone: milestone, exponent: ud2x18(1e18) });
        return segment;
    }
}
