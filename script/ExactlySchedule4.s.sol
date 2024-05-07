// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.19;

import { ExactlyBaseScript, LockupDynamic } from "./ExactlyBase.s.sol";

contract ExactlySchedule4Script is ExactlyBaseScript {
    function run() public override {
        vm.startBroadcast(EXACTLY_PROTOCOL_OWNER);

        {
            Operation[] memory transfers = new Operation[](2);
            transfers[0] = Operation({ to: 0x883c1C3f7254C07eFf1456A57842f3D7378FEAF0, tokenId: 88, amount: 84_746e18 });
            transfers[1] = Operation({ to: 0xffC89bd42D340A5d0B8035D23457D014f25CC337, tokenId: 112, amount: 9126e18 });
            for (uint256 i = 0; i < transfers.length; ++i) {
                assert(SABLIER_LOCKUP_DYNAMIC.getDepositedAmount(transfers[i].tokenId) == transfers[i].amount);
                SABLIER_LOCKUP_DYNAMIC.safeTransferFrom(EXACTLY_PROTOCOL_OWNER, transfers[i].to, transfers[i].tokenId);
            }
        }
        {
            Operation[] memory cancels = new Operation[](3);
            cancels[0] = Operation({ to: 0x652afcD1EB1A90A622dC4033eE7630BdD3ad3E51, tokenId: 67, amount: 37_484e18 });
            cancels[1] = Operation({ to: 0xF891855Ddb613A9D56b6EAeA7495950B374181e2, tokenId: 69, amount: 33_572e18 });
            cancels[2] = Operation({ to: 0x997137e1c2A1A8A78CE2D17796b870eFbC7572D2, tokenId: 78, amount: 198_782e18 });
            for (uint256 i = 0; i < cancels.length; ++i) {
                assert(SABLIER_LOCKUP_DYNAMIC.ownerOf(cancels[i].tokenId) == cancels[i].to);
                assert(SABLIER_LOCKUP_DYNAMIC.getDepositedAmount(cancels[i].tokenId) == cancels[i].amount);
                SABLIER_LOCKUP_DYNAMIC.cancel(cancels[i].tokenId);
            }
        }

        EXA.approve(address(SABLIER_LOCKUP_DYNAMIC), aggregateAmount());
        LockupDynamic.CreateWithMilestones[] memory usersParams = getUsersParams();
        for (uint256 i = 0; i < usersParams.length; ++i) {
            SABLIER_LOCKUP_DYNAMIC.createWithMilestones(usersParams[i]);
        }
        assert(EXA.balanceOf(EXACTLY_PROTOCOL_OWNER) == 0);
        vm.stopBroadcast();
    }

    function aggregateAmount() public pure override returns (uint128) {
        return 269_839e18;
    }

    function getUsersParams() public override returns (LockupDynamic.CreateWithMilestones[] memory) {
        LockupDynamic.CreateWithMilestones[] memory usersParams = new LockupDynamic.CreateWithMilestones[](4);
        usersParams[0] = getParamsForUser1();
        usersParams[1] = getParamsForUser2();
        usersParams[2] = getParamsForUser3();
        usersParams[3] = getParamsForUser4();
        return usersParams;
    }

    function getParamsForUser1()
        public
        csv("1-0x652afcD1EB1A90A622dC4033eE7630BdD3ad3E51")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x652afcD1EB1A90A622dC4033eE7630BdD3ad3E51,
            segments: getSegmentsForUser1(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 17_766e18
        });
    }

    function getParamsForUser2()
        public
        csv("2-0xF891855Ddb613A9D56b6EAeA7495950B374181e2")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xF891855Ddb613A9D56b6EAeA7495950B374181e2,
            segments: getSegmentsForUser2(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 10_187e18
        });
    }

    function getParamsForUser3()
        public
        csv("3-0x9dc660b87ab8b8229a43623b3e32beb75cf47cea")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x9dC660B87ab8b8229a43623b3e32bEb75cF47CEA,
            segments: getSegmentsForUser3(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_733_011_200, // December 01, 2024 at 00:00:00 UTC
            totalAmount: 10_000e18
        });
    }

    function getParamsForUser4()
        public
        csv("4-0x997137e1c2A1A8A78CE2D17796b870eFbC7572D2")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x997137e1c2A1A8A78CE2D17796b870eFbC7572D2,
            segments: getSegmentsForUser4(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 231_885e18
        });
    }

    function getSegmentsForUser1() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 370e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 370e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 370e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 371e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 370e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 370e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 370e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 370e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 370e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 370e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 370e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 371e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 370e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 370e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 370e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 370e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 370e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 370e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 370e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 371e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 370e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 370e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 370e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 370e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 370e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 370e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 370e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 371e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 370e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 370e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 370e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 370e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 370e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 370e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 370e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 371e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 370e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 370e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 370e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 370e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 370e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 370e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 370e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 371e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 370e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 370e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 370e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 370e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser2() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 212e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 212e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 213e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 212e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 212e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 212e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 213e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 212e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 212e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 212e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 213e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 212e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 212e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 212e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 212e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 213e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 212e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 212e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 212e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 213e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 212e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 212e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 212e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 213e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 212e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 212e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 212e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 212e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 213e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 212e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 212e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 212e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 213e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 212e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 212e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 212e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 212e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 213e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 212e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 212e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 212e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 213e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 212e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 212e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 212e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 213e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 212e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 212e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser3() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 52e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 61e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 69e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 78e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 87e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 96e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 104e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 113e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 121e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 130e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 139e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 148e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 156e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 165e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 174e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 182e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 191e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 200e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 208e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 217e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 226e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 234e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 243e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 252e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 260e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 269e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 278e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 287e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 295e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 304e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 312e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 321e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 330e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 339e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 347e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 356e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 364e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 209e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 208e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 208e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 209e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 208e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 208e18, milestone: 1_846_022_400 }); // July 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 209e18, milestone: 1_848_700_800 }); // August 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 208e18, milestone: 1_851_379_200 }); // September 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 208e18, milestone: 1_853_971_200 }); // October 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 209e18, milestone: 1_856_649_600 }); // November 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 208e18, milestone: 1_859_241_600 }); // December 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser4() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 4831e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 4831e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 4831e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 4831e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 4831e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 4831e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 4831e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 4831e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 4831e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 4831e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 4831e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 4831e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 4830e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 4831e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 4831e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 4831e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 4831e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 4831e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 4831e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 4831e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 4831e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 4831e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 4831e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 4831e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 4831e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 4831e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 4831e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 4831e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 4831e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 4831e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 4831e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 4831e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 4831e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 4831e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 4831e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 4831e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 4830e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 4831e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 4831e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 4831e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 4831e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 4831e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 4831e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 4831e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 4831e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 4831e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 4831e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 4830e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }
}

struct Operation {
    address to;
    uint256 tokenId;
    uint256 amount;
}
