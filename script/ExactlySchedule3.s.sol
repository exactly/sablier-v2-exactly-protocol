// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.19;

import { ExactlyBaseScript, LockupDynamic } from "./ExactlyBase.s.sol";

contract ExactlySchedule3Script is ExactlyBaseScript {
    uint256 public constant BATCH_SIZE = 13;

    function run() public override {
        vm.startBroadcast(EXACTLY_PROTOCOL_OWNER);
        LockupDynamic.CreateWithMilestones[] memory usersParams = getUsersParams();
        assert(usersParams.length % BATCH_SIZE == 0);

        uint256[] memory cancelIds = new uint256[](BATCH_SIZE);
        for (uint256 i = 0; i < usersParams.length; i += BATCH_SIZE) {
            uint256 batchTotal = 0;
            for (uint256 j = 0; j < BATCH_SIZE; ++j) {
                cancelIds[j] = 10 + i + j;
                uint256 depositedAmount = SABLIER_LOCKUP_DYNAMIC.getDepositedAmount(cancelIds[j]);
                batchTotal += depositedAmount;
                assert(depositedAmount == usersParams[i + j].totalAmount);
                assert(SABLIER_LOCKUP_DYNAMIC.getRecipient(cancelIds[j]) == usersParams[i + j].recipient);
            }
            SABLIER_LOCKUP_DYNAMIC.cancelMultiple(cancelIds);
            assert(EXA.balanceOf(EXACTLY_PROTOCOL_OWNER) == batchTotal);

            EXA.approve(address(SABLIER_LOCKUP_DYNAMIC), batchTotal);
            for (uint256 j = 0; j < BATCH_SIZE; ++j) {
                SABLIER_LOCKUP_DYNAMIC.createWithMilestones(usersParams[i + j]);
            }
            assert(EXA.balanceOf(EXACTLY_PROTOCOL_OWNER) == 0);
        }
        vm.stopBroadcast();
    }

    function aggregateAmount() public pure override returns (uint128) {
        return 4_500_000e18;
    }

    function getUsersParams() public override returns (LockupDynamic.CreateWithMilestones[] memory) {
        LockupDynamic.CreateWithMilestones[] memory usersParams = new LockupDynamic.CreateWithMilestones[](52);
        usersParams[0] = getParamsForUser1();
        usersParams[1] = getParamsForUser2();
        usersParams[2] = getParamsForUser3();
        usersParams[3] = getParamsForUser4();
        usersParams[4] = getParamsForUser5();
        usersParams[5] = getParamsForUser6();
        usersParams[6] = getParamsForUser7();
        usersParams[7] = getParamsForUser8();
        usersParams[8] = getParamsForUser9();
        usersParams[9] = getParamsForUser10();
        usersParams[10] = getParamsForUser11();
        usersParams[11] = getParamsForUser12();
        usersParams[12] = getParamsForUser13();
        usersParams[13] = getParamsForUser14();
        usersParams[14] = getParamsForUser15();
        usersParams[15] = getParamsForUser16();
        usersParams[16] = getParamsForUser17();
        usersParams[17] = getParamsForUser18();
        usersParams[18] = getParamsForUser19();
        usersParams[19] = getParamsForUser20();
        usersParams[20] = getParamsForUser21();
        usersParams[21] = getParamsForUser22();
        usersParams[22] = getParamsForUser23();
        usersParams[23] = getParamsForUser24();
        usersParams[24] = getParamsForUser25();
        usersParams[25] = getParamsForUser26();
        usersParams[26] = getParamsForUser27();
        usersParams[27] = getParamsForUser28();
        usersParams[28] = getParamsForUser29();
        usersParams[29] = getParamsForUser30();
        usersParams[30] = getParamsForUser31();
        usersParams[31] = getParamsForUser32();
        usersParams[32] = getParamsForUser33();
        usersParams[33] = getParamsForUser34();
        usersParams[34] = getParamsForUser35();
        usersParams[35] = getParamsForUser36();
        usersParams[36] = getParamsForUser37();
        usersParams[37] = getParamsForUser38();
        usersParams[38] = getParamsForUser39();
        usersParams[39] = getParamsForUser40();
        usersParams[40] = getParamsForUser41();
        usersParams[41] = getParamsForUser42();
        usersParams[42] = getParamsForUser43();
        usersParams[43] = getParamsForUser44();
        usersParams[44] = getParamsForUser45();
        usersParams[45] = getParamsForUser46();
        usersParams[46] = getParamsForUser47();
        usersParams[47] = getParamsForUser48();
        usersParams[48] = getParamsForUser49();
        usersParams[49] = getParamsForUser50();
        usersParams[50] = getParamsForUser51();
        usersParams[51] = getParamsForUser52();
        return usersParams;
    }

    function getParamsForUser1()
        public
        csv("1-0x669265141b4561528D27caC09282CE928A4896fa")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x669265141b4561528D27caC09282CE928A4896fa,
            segments: getSegmentsForUser1(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 202_086e18
        });
    }

    function getParamsForUser2()
        public
        csv("2-0xE72185a9f4Ce3500d6dC7CCDCfC64cf66D823bE8")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xE72185a9f4Ce3500d6dC7CCDCfC64cf66D823bE8,
            segments: getSegmentsForUser2(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 150_587e18
        });
    }

    function getParamsForUser3()
        public
        csv("3-0xE72185a9f4Ce3500d6dC7CCDCfC64cf66D823bE8")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xE72185a9f4Ce3500d6dC7CCDCfC64cf66D823bE8,
            segments: getSegmentsForUser3(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 34_224e18
        });
    }

    function getParamsForUser4()
        public
        csv("4-0xcd25c40dCfB47f6eE3112734393D25c9e21A3AA7")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xcd25c40dCfB47f6eE3112734393D25c9e21A3AA7,
            segments: getSegmentsForUser4(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 18_905e18
        });
    }

    function getParamsForUser5()
        public
        csv("5-0xcd25c40dCfB47f6eE3112734393D25c9e21A3AA7")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xcd25c40dCfB47f6eE3112734393D25c9e21A3AA7,
            segments: getSegmentsForUser5(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 6193e18
        });
    }

    function getParamsForUser6()
        public
        csv("6-0x652afcD1EB1A90A622dC4033eE7630BdD3ad3E51")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x652afcD1EB1A90A622dC4033eE7630BdD3ad3E51,
            segments: getSegmentsForUser6(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 37_484e18
        });
    }

    function getParamsForUser7()
        public
        csv("7-0xCa81a029aCa50Fa3e25Ea2f26E10152d903fB4B5")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xCa81a029aCa50Fa3e25Ea2f26E10152d903fB4B5,
            segments: getSegmentsForUser7(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 25_098e18
        });
    }

    function getParamsForUser8()
        public
        csv("8-0xF891855Ddb613A9D56b6EAeA7495950B374181e2")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xF891855Ddb613A9D56b6EAeA7495950B374181e2,
            segments: getSegmentsForUser8(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 33_572e18
        });
    }

    function getParamsForUser9()
        public
        csv("9-0x7d5Ff8caE8eF8d15357Cfd4A291E830C0F875F1B")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x7d5Ff8caE8eF8d15357Cfd4A291E830C0F875F1B,
            segments: getSegmentsForUser9(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9126e18
        });
    }

    function getParamsForUser10()
        public
        csv("10-0x3A0B303FF6B7250ddb659AdD318c8e74f3e8104d")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x3A0B303FF6B7250ddb659AdD318c8e74f3e8104d,
            segments: getSegmentsForUser10(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 4563e18
        });
    }

    function getParamsForUser11()
        public
        csv("11-0x4073F392794218FA3195cce45eaaC9A77066c640")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x4073F392794218FA3195cce45eaaC9A77066c640,
            segments: getSegmentsForUser11(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 325_945e18
        });
    }

    function getParamsForUser12()
        public
        csv("12-0xFB1E9918FBA266797e1191597b64ED6Be1EE2728")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xFB1E9918FBA266797e1191597b64ED6Be1EE2728,
            segments: getSegmentsForUser12(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 1_303_780e18
        });
    }

    function getParamsForUser13()
        public
        csv("13-0x7b7048820FB71Db6F086c5365E2948ce39E73304")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x7b7048820FB71Db6F086c5365E2948ce39E73304,
            segments: getSegmentsForUser13(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 46_284e18
        });
    }

    function getParamsForUser14()
        public
        csv("14-0xD754d49Ce331669C4f15B5e1b8E72D2d9Fc51B28")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xD754d49Ce331669C4f15B5e1b8E72D2d9Fc51B28,
            segments: getSegmentsForUser14(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 23_142e18
        });
    }

    function getParamsForUser15()
        public
        csv("15-0xd3819BEd61861d281d45E79988f95d4371D25e2c")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xd3819BEd61861d281d45E79988f95d4371D25e2c,
            segments: getSegmentsForUser15(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 46_284e18
        });
    }

    function getParamsForUser16()
        public
        csv("16-0x86C614FD180855f35160eD34552Ad4E99b8A2B52")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x86C614FD180855f35160eD34552Ad4E99b8A2B52,
            segments: getSegmentsForUser16(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_725_148_800, // September 01, 2024 at 00:00:00 UTC
            totalAmount: 10_104e18
        });
    }

    function getParamsForUser17()
        public
        csv("17-0x997137e1c2A1A8A78CE2D17796b870eFbC7572D2")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x997137e1c2A1A8A78CE2D17796b870eFbC7572D2,
            segments: getSegmentsForUser17(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 198_782e18
        });
    }

    function getParamsForUser18()
        public
        csv("18-0x749Ad5e67F52e9885B33f6F6625574ddDaDb52eE")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x749Ad5e67F52e9885B33f6F6625574ddDaDb52eE,
            segments: getSegmentsForUser18(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 732_073e18
        });
    }

    function getParamsForUser19()
        public
        csv("19-0xc6Ccecb3B0C1474294Af5C3579A888B9F947cF97")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xc6Ccecb3B0C1474294Af5C3579A888B9F947cF97,
            segments: getSegmentsForUser19(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 11_734e18
        });
    }

    function getParamsForUser20()
        public
        csv("20-0x85F2DF88a273a632C44f48CC6F94469500CED42b")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x85F2DF88a273a632C44f48CC6F94469500CED42b,
            segments: getSegmentsForUser20(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser21()
        public
        csv("21-0x677Ffe1Ee372e4f6aF8b6583B0012289940e2324")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x677Ffe1Ee372e4f6aF8b6583B0012289940e2324,
            segments: getSegmentsForUser21(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 50_566e18
        });
    }

    function getParamsForUser22()
        public
        csv("22-0x0E8b32C39AF8CC81f2471810eddFd5A3d3EF0dce")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x0E8b32C39AF8CC81f2471810eddFd5A3d3EF0dce,
            segments: getSegmentsForUser22(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 6193e18
        });
    }

    function getParamsForUser23()
        public
        csv("23-0x74aD20a33B37cCA9f5Bd150BB4ce49cF50d0b5eb")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x74aD20a33B37cCA9f5Bd150BB4ce49cF50d0b5eb,
            segments: getSegmentsForUser23(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 6275e18
        });
    }

    function getParamsForUser24()
        public
        csv("24-0x6EAbb5FaaEEF7a14ABfDE529F1dB80384f405E17")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x6EAbb5FaaEEF7a14ABfDE529F1dB80384f405E17,
            segments: getSegmentsForUser24(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 55_003e18
        });
    }

    function getParamsForUser25()
        public
        csv("25-0x27A818372670575914B50ff02580335e458fc696")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x27A818372670575914B50ff02580335e458fc696,
            segments: getSegmentsForUser25(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 550_196e18
        });
    }

    function getParamsForUser26()
        public
        csv("26-0xFab398B2cbB51Cf2d00D8819f57853dafC721CeF")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xFab398B2cbB51Cf2d00D8819f57853dafC721CeF,
            segments: getSegmentsForUser26(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 76_924e18
        });
    }

    function getParamsForUser27()
        public
        csv("27-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser27(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 84_746e18
        });
    }

    function getParamsForUser28()
        public
        csv("28-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser28(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 38_462e18
        });
    }

    function getParamsForUser29()
        public
        csv("29-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser29(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 84_746e18
        });
    }

    function getParamsForUser30()
        public
        csv("30-0xf484D78306E068BfE682829304344cf15FBedB49")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xf484D78306E068BfE682829304344cf15FBedB49,
            segments: getSegmentsForUser30(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 38_462e18
        });
    }

    function getParamsForUser31()
        public
        csv("31-0x7ea226f9fBAbFf6263D6937878CCa7867f2bB091")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x7ea226f9fBAbFf6263D6937878CCa7867f2bB091,
            segments: getSegmentsForUser31(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 38_462e18
        });
    }

    function getParamsForUser32()
        public
        csv("32-0x2C94c9590c5A4A691B46a0D6276DC90468d9f635")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x2C94c9590c5A4A691B46a0D6276DC90468d9f635,
            segments: getSegmentsForUser32(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 28_683e18
        });
    }

    function getParamsForUser33()
        public
        csv("33-0x949f482347B02b25Df153942D84501Efb4698CB1")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x949f482347B02b25Df153942D84501Efb4698CB1,
            segments: getSegmentsForUser33(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser34()
        public
        csv("34-0x8c405dD569d597720c04e3c1577cE3841e206cE5")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x8c405dD569d597720c04e3c1577cE3841e206cE5,
            segments: getSegmentsForUser34(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser35()
        public
        csv("35-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser35(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser36()
        public
        csv("36-0xE23Aa13d53A728ECa4B1ae59Ae008Eef89c79f51")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xE23Aa13d53A728ECa4B1ae59Ae008Eef89c79f51,
            segments: getSegmentsForUser36(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser37()
        public
        csv("37-0x9A3CcbF4f2Fa1899a2165A367AcE6532Db592646")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x9A3CcbF4f2Fa1899a2165A367AcE6532Db592646,
            segments: getSegmentsForUser37(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser38()
        public
        csv("38-0xB913A66828e3c5E9e817876a3059F3baE77ECaFe")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xB913A66828e3c5E9e817876a3059F3baE77ECaFe,
            segments: getSegmentsForUser38(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 7823e18
        });
    }

    function getParamsForUser39()
        public
        csv("39-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser39(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser40()
        public
        csv("40-0xB35f6cbbd5f0b1eC1cbb50c5bf2620fd5f2918D4")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xB35f6cbbd5f0b1eC1cbb50c5bf2620fd5f2918D4,
            segments: getSegmentsForUser40(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser41()
        public
        csv("41-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser41(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser42()
        public
        csv("42-0x5D6977aC3E7c8139f1C607308292ee4Cc4773865")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x5D6977aC3E7c8139f1C607308292ee4Cc4773865,
            segments: getSegmentsForUser42(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 11_734e18
        });
    }

    function getParamsForUser43()
        public
        csv("43-0x815070A584d52384A1CdbFf844a38ae657e93aC8")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x815070A584d52384A1CdbFf844a38ae657e93aC8,
            segments: getSegmentsForUser43(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser44()
        public
        csv("44-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser44(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser45()
        public
        csv("45-0xb3C5839c98530efe921e3f35A0CF1bDf03EAA08d")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xb3C5839c98530efe921e3f35A0CF1bDf03EAA08d,
            segments: getSegmentsForUser45(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 10_104e18
        });
    }

    function getParamsForUser46()
        public
        csv("46-0xB9d3F7cc1B916e5dA7537d28964fFaBbCf921A87")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xB9d3F7cc1B916e5dA7537d28964fFaBbCf921A87,
            segments: getSegmentsForUser46(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 978e18
        });
    }

    function getParamsForUser47()
        public
        csv("47-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser47(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 5541e18
        });
    }

    function getParamsForUser48()
        public
        csv("48-0xDe3258C1C45a557F4924d1E4e3d0A4E5341607Ee")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xDe3258C1C45a557F4924d1E4e3d0A4E5341607Ee,
            segments: getSegmentsForUser48(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 18_579e18
        });
    }

    function getParamsForUser49()
        public
        csv("49-0xCDA47d2cdA26ce48f48eDAB86CE0Ab52C153Ba7F")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xCDA47d2cdA26ce48f48eDAB86CE0Ab52C153Ba7F,
            segments: getSegmentsForUser49(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 2282e18
        });
    }

    function getParamsForUser50()
        public
        csv("50-0xF6bC475378c2DE2465Ef86403A8492C3A89EF64C")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xF6bC475378c2DE2465Ef86403A8492C3A89EF64C,
            segments: getSegmentsForUser50(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 978e18
        });
    }

    function getParamsForUser51()
        public
        csv("51-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser51(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 9126e18
        });
    }

    function getParamsForUser52()
        public
        csv("52-0x6320d43FE9939efAD4d48bfCdC63C06BAFc2FE3d")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x6320d43FE9939efAD4d48bfCdC63C06BAFc2FE3d,
            segments: getSegmentsForUser52(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_717_200_000, // June 01, 2024 at 00:00:00 UTC
            totalAmount: 1304e18
        });
    }

    function getSegmentsForUser1() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 2715e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 2893e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 3072e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 3239e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 3426e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 3588e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 3780e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 3960e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 4060e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 4308e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 4455e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 4663e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 4804e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 5017e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 5195e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 5328e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 5551e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 5676e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 4262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 4211e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 4210e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 4210e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 4210e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 4210e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 4210e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 4210e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 4210e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 4211e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 4210e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 4210e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 4210e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 4210e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 4210e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 4210e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 4210e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 4211e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 4210e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 4210e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 4210e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 4210e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 4210e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 4210e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 4210e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 4211e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 4210e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 4210e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 4210e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 4210e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser2() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 1830e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1962e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 2096e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 2220e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 2360e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 2480e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 2624e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 2757e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 2833e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 3017e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 3126e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 3281e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 3387e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 3545e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 3678e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 3777e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 3943e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 4037e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 4206e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 4340e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 4338e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 3182e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 3137e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 3137e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 3138e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 3137e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 3137e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 3137e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 3137e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 3138e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 3137e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 3137e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 3137e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 3138e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 3137e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 3137e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 3137e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 3137e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 3138e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 3137e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 3137e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 3137e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 3138e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 3137e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 3137e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 3137e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 3137e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 3138e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser3() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 228e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 257e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 286e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 318e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 345e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 378e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 408e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 425e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 467e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 492e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 527e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 551e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 587e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 617e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 640e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 677e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 699e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 738e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 767e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 768e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 826e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 846e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 887e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 905e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 946e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 977e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 994e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1037e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1053e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1097e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1127e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1109e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1187e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1199e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1106e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 713e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 713e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 713e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 713e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 713e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 713e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 713e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 713e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 713e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 713e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 713e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 713e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser4() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 216e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 233e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 249e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 265e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 282e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 298e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 316e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 332e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 342e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 365e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 379e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 398e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 411e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 432e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 448e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 460e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 481e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 493e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 515e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 531e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 530e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 564e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 519e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 393e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 394e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 394e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 394e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 394e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 394e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 394e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 393e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 394e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 394e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 394e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 394e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 394e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 393e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 394e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 394e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 394e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 394e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 394e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 394e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 393e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 394e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 394e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 394e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 394e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser5() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 36e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 41e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 46e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 52e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 58e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 62e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 68e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 74e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 77e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 85e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 89e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 95e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 100e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 106e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 112e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 116e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 122e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 127e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 133e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 139e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 139e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 149e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 153e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 161e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 164e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 171e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 177e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 179e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 188e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 191e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 198e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 204e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 201e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 215e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 217e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 200e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 129e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 129e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 129e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 129e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 129e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 129e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 129e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 129e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 129e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 129e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 129e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 129e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser6() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 419e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 451e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 485e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 516e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 550e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 581e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 616e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 649e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 669e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 714e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 741e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 780e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 806e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 846e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 878e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 904e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 944e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 968e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1010e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1044e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1042e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1108e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1129e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 892e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 781e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 781e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 781e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 780e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 781e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 781e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 781e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 781e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 781e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 781e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 781e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 781e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 781e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 781e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 781e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 780e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 781e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 781e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 781e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 781e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 781e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 781e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 781e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 781e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser7() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 230e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 252e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 275e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 295e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 319e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 338e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 363e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 385e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 397e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 428e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 446e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 472e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 490e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 516e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 538e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 555e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 582e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 598e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 626e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 649e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 648e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 692e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 706e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 735e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 749e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 780e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 802e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 774e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 523e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 523e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 523e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 523e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 523e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 523e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 522e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 523e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 523e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 523e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 523e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 523e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 523e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 523e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 522e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 523e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 523e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 523e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 523e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 523e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser8() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 284e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 314e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 344e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 372e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 402e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 430e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 461e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 491e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 508e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 549e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 574e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 608e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 631e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 667e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 697e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 718e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 756e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 776e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 815e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 844e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 843e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 902e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 921e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 960e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 979e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1020e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1049e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1066e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1108e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 894e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 699e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 700e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 699e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 699e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 700e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 699e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 700e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 699e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 700e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 699e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 699e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 700e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 699e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 700e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 699e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 700e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 699e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 699e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser9() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 57e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 65e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 73e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 80e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 89e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 97e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 105e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 113e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 117e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 129e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 136e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 145e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 151e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 161e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 169e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 175e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 184e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 191e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 201e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 209e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 209e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 225e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 230e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 240e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 246e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 257e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 264e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 270e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 281e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 285e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 296e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 305e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 300e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 321e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 279e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 190e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 190e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 190e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 190e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 190e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 191e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 190e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 190e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 190e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 190e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 190e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 190e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 190e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser10() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 28e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 33e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 36e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 41e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 44e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 48e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 53e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 56e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 59e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 65e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 67e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 73e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 75e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 81e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 84e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 88e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 92e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 96e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 100e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 105e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 104e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 112e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 115e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 121e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 122e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 129e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 132e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 135e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 140e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 143e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 148e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 153e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 150e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 160e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 139e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 95e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 95e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 96e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 95e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 95e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 95e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 95e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 95e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 95e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 95e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 95e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 95e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 95e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser11() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 6778e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 6803e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 6791e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 6790e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 6791e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 6790e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 6791e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 6790e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 6791e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 6790e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 6791e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 6790e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 6791e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 6790e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 6791e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 6790e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 6791e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 6790e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 6791e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 6791e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 6790e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 6791e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 6790e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 6791e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 6790e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 6791e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 6790e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 6791e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 6790e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 6791e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 6790e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 6791e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 6790e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 6791e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 6790e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 6791e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 6790e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 6791e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 6791e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 6790e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 6791e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 6790e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 6791e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 6790e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 6791e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 6790e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 6791e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 6790e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser12() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 27_113e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 27_211e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 27_162e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 27_162e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 27_163e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 27_162e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 27_162e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 27_162e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 27_162e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 27_162e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 27_162e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 27_162e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 27_162e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 27_162e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 27_163e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 27_162e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 27_162e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 27_162e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 27_162e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 27_162e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 27_162e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 27_162e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 27_162e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 27_162e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 27_163e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 27_162e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 27_162e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 27_162e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 27_162e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 27_162e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 27_162e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 27_162e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 27_162e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 27_163e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 27_162e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 27_162e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 27_162e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 27_162e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 27_162e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 27_162e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 27_162e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 27_162e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 27_162e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 27_163e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 27_162e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 27_162e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 27_162e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 27_161e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser13() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 705e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 746e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 786e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 825e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 868e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 905e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 949e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 990e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1013e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1070e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1104e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1151e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1183e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1205e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 964e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 964e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 964e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 965e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 964e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 964e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 964e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 965e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 964e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 964e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 964e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 965e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 964e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 964e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 964e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 965e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 964e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 964e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 964e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 965e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 964e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 964e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 964e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 965e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 964e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 964e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 964e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 965e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 964e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 964e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 964e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 965e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 964e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 964e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser14() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 348e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 368e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 389e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 408e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 429e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 448e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 470e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 490e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 502e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 530e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 548e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 570e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 587e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 612e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 533e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 482e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 482e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 482e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 482e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 483e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 482e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 482e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 482e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 482e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 482e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 482e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 482e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 483e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 482e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 482e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 482e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 482e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 482e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 482e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 482e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 483e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 482e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 482e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 482e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 482e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 482e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 482e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 482e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 483e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 482e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 482e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 482e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 482e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser15() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 706e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 746e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 787e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 826e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 869e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 905e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 950e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 990e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1014e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1071e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1104e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1152e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1184e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1196e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 964e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 964e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 964e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 965e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 964e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 964e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 964e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 965e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 964e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 964e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 964e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 965e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 964e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 964e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 964e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 965e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 964e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 964e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 964e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 965e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 964e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 964e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 964e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 965e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 964e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 964e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 964e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 965e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 964e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 964e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 964e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 965e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 964e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 964e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser16() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 53e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 61e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 70e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 79e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 88e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 96e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 106e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 114e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 122e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 132e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 140e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 149e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 158e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 167e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 175e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 185e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 192e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 202e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 211e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 219e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 228e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 237e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 245e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 255e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 272e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 280e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 290e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 298e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 307e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 316e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 324e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 334e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 342e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 351e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 359e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 369e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 210e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 211e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 210e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 211e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 210e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 211e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 210e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 211e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 210e18, milestone: 1_846_022_400 }); // July 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 211e18, milestone: 1_848_700_800 }); // August 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 210e18, milestone: 1_851_379_200 }); // September 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser17() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 4141e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 4142e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 4141e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 4141e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 4142e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 4141e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 4141e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 4142e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 4141e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 4141e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 4141e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 4142e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 4141e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 4141e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 4142e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 4141e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 4141e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 4142e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 4141e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 4141e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 4142e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 4141e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 4141e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 4142e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 4141e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 4141e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 4141e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 4142e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 4141e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 4141e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 4142e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 4141e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 4141e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 4142e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 4141e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 4141e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 4142e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 4141e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 4141e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 4142e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 4141e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 4141e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 4141e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 4142e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 4141e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 4141e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 4142e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 4140e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser18() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 15_252e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 15_251e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 15_252e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 15_251e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 15_252e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 15_251e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 15_252e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 15_251e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 15_252e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 15_251e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 15_252e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 15_251e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 15_252e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 15_251e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 15_252e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 15_251e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 15_252e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 15_251e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 15_252e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 15_251e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 15_252e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 15_251e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 15_252e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 15_252e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 15_251e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 15_252e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 15_251e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 15_252e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 15_251e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 15_252e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 15_251e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 15_252e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 15_251e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 15_252e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 15_251e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 15_252e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 15_251e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 15_252e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 15_251e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 15_252e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 15_251e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 15_252e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 15_251e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 15_252e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 15_251e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 15_252e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 15_251e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 15_252e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser19() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 244e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 245e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 244e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 245e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 244e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 245e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 244e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 245e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 244e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 245e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 244e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 245e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 244e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 244e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 245e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 244e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 245e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 244e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 245e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 244e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 245e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 244e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 245e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 244e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 244e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 245e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 244e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 245e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 244e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 245e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 244e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 245e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 244e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 245e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 244e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 245e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 244e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 244e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 245e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 244e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 245e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 244e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 245e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 244e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 245e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 244e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 245e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 244e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser20() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 197e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 197e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 197e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 197e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 197e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 196e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 197e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 197e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 197e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 197e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 197e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 197e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 197e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 197e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 197e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 197e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 197e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 196e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 197e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 197e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 197e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 197e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 197e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 197e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 197e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 197e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 197e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 197e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 197e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 196e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 197e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 197e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 197e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 197e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 197e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 197e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 197e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 197e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 197e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 197e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 197e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 196e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 197e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 197e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 197e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 197e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 197e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser21() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 1053e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1054e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1053e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1054e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1053e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1054e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1053e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1054e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1053e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1054e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1053e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1054e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1053e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1053e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1054e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1053e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1054e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1053e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1054e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1053e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1054e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1053e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1054e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1053e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1053e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1054e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1053e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1054e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1053e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1054e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1053e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1054e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1053e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1054e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1053e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1054e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 1053e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 1053e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 1054e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 1053e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 1054e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 1053e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 1054e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 1053e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 1054e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 1053e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 1054e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 1053e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser22() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 129e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 129e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 129e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 129e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 129e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 129e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 129e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 129e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 129e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 129e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 129e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 129e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 129e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 129e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 129e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 129e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 129e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 129e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 129e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 129e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 129e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 129e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 129e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 130e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 129e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 129e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 129e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 129e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 129e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 129e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 129e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 129e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 129e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 129e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 129e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 129e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 129e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 129e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 129e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 129e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 129e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 129e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 129e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 129e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 129e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 129e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 129e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 129e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser23() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 131e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 130e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 131e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 131e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 131e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 130e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 131e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 131e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 131e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 130e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 131e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 131e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 130e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 131e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 131e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 131e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 130e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 131e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 131e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 131e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 130e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 131e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 131e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 131e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 130e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 131e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 131e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 130e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 131e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 131e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 131e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 130e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 131e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 131e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 131e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 130e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 131e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 131e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 130e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 131e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 131e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 131e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 130e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 131e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 131e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 131e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 130e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 131e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser24() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 1146e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1146e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1146e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1146e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1145e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1146e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1146e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1146e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1146e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1146e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1146e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1146e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1146e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1146e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1145e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1146e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1146e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1146e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1146e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1146e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1146e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1146e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1146e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1146e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1145e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1146e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1146e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1146e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1146e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1146e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1146e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1146e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1146e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1145e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1146e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1146e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 1146e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 1146e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 1146e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 1146e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 1146e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 1146e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 1146e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 1145e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 1146e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 1146e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 1146e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 1146e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser25() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 11_462e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 11_463e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 11_462e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 11_463e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 11_462e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 11_463e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 11_462e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 11_462e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 11_463e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 11_462e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 11_463e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 11_462e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 11_462e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 11_463e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 11_462e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 11_463e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 11_462e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 11_463e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 11_462e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 11_462e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 11_463e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 11_462e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 11_463e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 11_462e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 11_462e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 11_463e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 11_462e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 11_463e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 11_462e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 11_463e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 11_462e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 11_462e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 11_463e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 11_462e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 11_463e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 11_462e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 11_462e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 11_463e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 11_462e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 11_463e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 11_462e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 11_463e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 11_462e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 11_462e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 11_463e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 11_462e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 11_463e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 11_462e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser26() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 1603e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1602e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1603e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1602e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1603e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1603e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1602e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1603e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1602e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1603e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1602e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1603e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1603e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1602e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1603e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1602e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1603e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1603e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1602e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1603e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1602e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1603e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1602e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1603e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1603e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1602e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1603e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1602e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1603e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1603e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1602e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1603e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1602e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1603e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1602e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1603e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 1603e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 1602e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 1603e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 1602e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 1603e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 1603e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 1602e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 1603e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 1602e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 1603e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 1602e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 1603e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser27() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 1766e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1765e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1766e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1765e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1766e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1765e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1766e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1765e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1766e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1765e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1766e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1766e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1765e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1766e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1765e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1766e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1765e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1766e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1765e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1766e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1765e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1766e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1765e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1766e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1766e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1765e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1766e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1765e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1766e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1765e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1766e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1765e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1766e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1765e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1766e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1766e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 1765e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 1766e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 1765e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 1766e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 1765e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 1766e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 1765e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 1766e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 1765e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 1766e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 1765e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 1766e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser28() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 801e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 802e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 801e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 801e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 801e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 802e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 801e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 801e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 802e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 801e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 801e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 802e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 801e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 801e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 801e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 802e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 801e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 801e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 802e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 801e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 801e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 801e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 802e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 801e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 801e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 802e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 801e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 801e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 801e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 802e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 801e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 801e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 802e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 801e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 801e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 802e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 801e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 801e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 801e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 802e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 801e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 801e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 802e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 801e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 801e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 801e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 802e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 801e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser29() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 1766e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1765e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1766e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1765e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1766e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1765e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1766e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1765e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1766e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1765e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1766e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1766e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1765e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1766e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1765e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1766e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1765e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1766e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1765e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1766e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1765e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1766e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1765e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1766e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1766e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1765e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1766e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1765e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1766e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1765e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1766e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1765e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1766e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1765e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1766e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1766e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 1765e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 1766e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 1765e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 1766e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 1765e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 1766e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 1765e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 1766e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 1765e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 1766e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 1765e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 1766e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser30() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 801e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 802e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 801e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 801e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 801e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 802e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 801e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 801e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 802e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 801e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 801e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 802e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 801e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 801e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 801e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 802e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 801e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 801e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 802e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 801e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 801e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 801e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 802e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 801e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 801e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 802e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 801e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 801e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 801e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 802e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 801e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 801e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 802e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 801e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 801e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 802e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 801e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 801e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 801e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 802e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 801e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 801e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 802e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 801e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 801e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 801e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 802e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 801e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser31() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 801e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 802e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 801e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 801e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 801e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 802e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 801e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 801e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 802e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 801e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 801e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 802e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 801e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 801e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 801e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 802e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 801e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 801e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 802e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 801e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 801e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 801e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 802e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 801e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 801e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 802e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 801e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 801e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 801e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 802e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 801e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 801e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 802e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 801e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 801e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 802e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 801e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 801e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 801e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 802e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 801e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 801e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 802e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 801e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 801e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 801e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 802e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 801e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser32() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 598e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 597e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 598e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 597e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 598e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 597e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 598e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 598e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 597e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 598e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 597e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 598e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 597e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 598e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 597e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 598e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 598e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 597e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 598e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 597e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 598e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 597e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 598e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 598e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 597e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 598e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 597e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 598e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 597e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 598e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 597e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 598e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 598e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 597e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 598e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 597e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 598e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 597e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 598e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 598e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 597e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 598e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 597e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 598e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 597e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 598e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 597e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 598e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser33() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 401e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 400e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 401e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 401e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 400e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 401e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 401e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 400e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 401e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 400e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 401e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 401e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 400e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 401e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 401e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 400e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 401e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 401e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 400e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 401e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 401e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 400e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 401e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 401e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 400e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 401e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 400e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 401e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 401e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 400e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 401e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 401e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 400e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 401e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 401e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 400e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 401e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 401e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 400e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 401e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 400e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 401e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 401e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 400e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 401e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 401e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 400e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 401e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser34() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 401e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 400e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 401e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 401e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 400e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 401e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 401e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 400e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 401e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 400e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 401e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 401e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 400e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 401e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 401e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 400e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 401e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 401e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 400e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 401e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 401e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 400e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 401e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 401e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 400e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 401e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 400e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 401e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 401e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 400e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 401e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 401e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 400e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 401e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 401e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 400e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 401e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 401e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 400e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 401e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 400e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 401e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 401e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 400e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 401e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 401e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 400e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 401e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser35() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 401e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 400e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 401e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 401e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 400e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 401e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 401e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 400e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 401e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 400e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 401e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 401e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 400e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 401e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 401e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 400e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 401e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 401e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 400e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 401e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 401e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 400e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 401e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 401e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 400e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 401e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 400e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 401e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 401e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 400e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 401e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 401e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 400e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 401e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 401e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 400e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 401e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 401e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 400e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 401e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 400e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 401e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 401e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 400e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 401e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 401e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 400e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 401e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser36() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 197e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 197e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 197e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 197e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 197e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 196e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 197e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 197e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 197e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 197e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 197e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 197e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 197e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 197e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 197e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 197e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 197e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 196e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 197e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 197e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 197e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 197e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 197e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 197e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 197e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 197e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 197e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 197e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 197e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 196e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 197e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 197e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 197e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 197e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 197e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 197e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 197e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 197e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 197e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 197e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 197e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 196e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 197e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 197e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 197e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 197e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 197e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser37() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 401e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 400e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 401e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 401e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 400e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 401e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 401e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 400e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 401e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 400e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 401e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 401e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 400e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 401e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 401e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 400e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 401e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 401e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 400e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 401e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 401e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 400e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 401e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 401e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 400e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 401e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 400e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 401e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 401e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 400e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 401e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 401e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 400e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 401e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 401e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 400e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 401e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 401e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 400e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 401e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 400e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 401e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 401e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 400e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 401e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 401e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 400e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 401e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser38() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 163e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 163e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 163e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 163e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 163e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 163e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 163e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 163e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 163e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 163e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 163e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 163e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 163e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 163e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 163e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 163e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 163e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 163e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 163e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 163e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 163e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 163e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 163e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 163e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 162e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 163e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 163e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 163e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 163e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 163e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 163e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 163e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 163e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 163e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 163e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 163e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 163e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 163e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 163e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 163e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 163e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 163e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 163e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 163e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 163e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 163e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 163e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 163e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser39() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 401e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 400e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 401e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 401e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 400e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 401e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 401e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 400e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 401e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 400e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 401e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 401e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 400e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 401e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 401e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 400e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 401e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 401e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 400e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 401e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 401e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 400e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 401e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 401e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 400e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 401e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 400e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 401e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 401e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 400e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 401e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 401e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 400e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 401e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 401e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 400e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 401e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 401e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 400e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 401e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 400e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 401e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 401e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 400e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 401e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 401e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 400e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 401e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser40() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 197e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 197e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 197e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 197e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 197e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 196e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 197e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 197e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 197e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 197e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 197e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 197e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 197e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 197e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 197e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 197e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 197e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 196e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 197e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 197e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 197e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 197e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 197e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 197e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 197e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 197e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 197e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 197e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 197e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 196e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 197e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 197e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 197e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 197e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 197e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 197e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 197e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 197e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 197e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 197e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 197e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 196e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 197e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 197e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 197e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 197e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 197e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser41() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 197e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 197e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 197e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 197e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 197e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 196e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 197e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 197e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 197e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 197e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 197e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 197e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 197e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 197e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 197e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 197e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 197e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 196e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 197e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 197e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 197e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 197e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 197e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 197e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 197e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 197e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 197e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 197e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 197e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 196e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 197e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 197e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 197e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 197e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 197e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 197e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 197e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 197e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 197e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 197e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 197e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 196e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 197e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 197e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 197e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 197e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 197e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser42() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 244e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 245e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 244e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 245e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 244e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 245e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 244e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 245e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 244e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 245e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 244e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 245e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 244e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 244e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 245e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 244e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 245e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 244e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 245e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 244e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 245e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 244e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 245e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 244e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 244e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 245e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 244e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 245e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 244e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 245e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 244e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 245e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 244e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 245e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 244e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 245e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 244e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 244e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 245e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 244e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 245e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 244e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 245e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 244e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 245e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 244e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 245e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 244e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser43() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 197e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 197e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 197e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 197e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 197e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 196e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 197e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 197e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 197e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 197e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 197e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 197e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 197e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 197e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 197e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 197e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 197e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 196e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 197e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 197e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 197e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 197e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 197e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 197e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 197e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 197e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 197e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 197e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 197e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 196e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 197e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 197e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 197e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 197e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 197e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 197e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 197e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 197e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 197e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 197e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 197e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 196e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 197e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 197e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 197e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 197e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 197e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser44() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 197e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 197e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 197e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 197e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 197e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 197e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 196e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 197e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 197e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 197e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 197e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 197e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 197e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 197e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 197e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 197e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 197e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 197e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 196e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 197e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 197e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 197e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 197e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 197e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 197e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 197e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 197e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 197e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 197e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 197e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 196e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 197e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 197e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 197e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 197e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 197e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 197e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 197e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 197e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 197e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 197e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 197e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 196e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 197e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 197e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 197e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 197e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 197e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser45() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 211e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 210e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 211e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 210e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 211e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 210e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 211e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 210e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 211e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 210e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 211e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 210e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 211e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 210e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 211e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 210e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 211e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 210e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 211e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 210e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 211e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 210e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 211e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 210e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 211e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 210e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 211e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 210e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 211e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 210e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 211e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 210e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 211e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 210e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 211e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 210e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 211e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 210e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 211e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 210e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 211e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 210e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 211e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 210e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 211e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 210e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 211e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 210e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser46() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 20e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 21e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 20e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 21e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 20e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 20e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 21e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 20e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 20e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 21e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 20e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 21e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 20e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 20e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 21e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 20e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 20e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 21e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 20e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 21e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 20e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 20e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 21e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 20e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 20e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 21e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 20e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 21e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 20e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 20e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 21e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 20e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 20e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 21e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 20e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 21e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 20e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 20e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 21e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 20e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 20e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 21e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 20e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 21e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 20e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 20e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 21e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 20e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser47() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 115e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 116e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 115e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 116e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 115e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 116e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 115e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 116e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 115e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 115e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 116e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 115e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 116e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 115e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 116e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 115e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 115e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 116e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 115e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 116e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 115e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 116e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 115e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 116e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 115e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 115e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 116e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 115e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 116e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 115e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 116e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 115e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 115e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 116e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 115e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 116e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 115e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 116e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 115e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 116e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 115e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 115e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 116e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 115e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 116e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 115e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 116e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 115e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser48() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 387e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 387e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 387e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 387e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 387e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 387e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 387e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 388e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 387e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 387e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 387e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 387e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 387e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 387e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 387e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 387e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 387e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 387e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 387e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 387e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 387e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 387e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 387e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 388e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 387e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 387e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 387e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 387e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 387e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 387e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 387e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 387e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 387e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 387e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 387e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 387e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 387e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 387e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 387e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 388e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 387e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 387e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 387e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 387e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 387e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 387e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 387e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 387e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser49() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 48e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 47e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 48e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 47e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 48e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 47e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 48e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 47e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 48e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 47e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 48e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 48e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 47e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 48e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 47e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 48e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 47e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 48e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 47e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 48e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 47e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 48e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 47e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 48e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 48e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 47e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 48e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 47e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 48e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 47e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 48e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 47e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 48e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 47e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 48e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 48e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 47e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 48e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 47e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 48e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 47e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 48e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 47e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 48e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 47e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 48e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 47e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 48e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser50() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 20e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 21e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 20e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 21e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 20e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 20e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 21e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 20e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 20e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 21e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 20e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 21e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 20e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 20e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 21e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 20e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 20e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 21e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 20e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 21e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 20e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 20e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 21e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 20e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 20e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 21e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 20e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 21e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 20e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 20e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 21e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 20e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 20e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 21e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 20e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 21e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 20e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 20e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 21e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 20e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 20e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 21e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 20e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 21e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 20e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 20e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 21e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 20e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser51() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 190e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 190e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 190e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 191e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 190e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 190e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 190e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 190e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 190e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 190e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 190e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 191e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 190e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 190e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 190e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 190e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 190e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 190e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 190e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 191e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 190e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 190e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 190e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 190e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 190e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 190e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 190e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 191e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 190e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 190e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 190e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 190e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 190e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 190e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 190e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 191e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 190e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 190e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 190e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 190e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 190e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 190e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 190e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 191e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 190e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 190e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 190e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 190e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser52() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](48);
        segments[0] = getSegment({ amount: 27e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 27e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 28e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 27e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 27e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 27e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 27e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 27e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 28e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 27e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 27e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 27e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 27e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 27e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 28e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 27e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 27e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 27e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 27e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 27e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 28e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 27e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 27e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 27e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 27e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 27e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 28e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 27e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 27e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 27e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 27e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 27e18, milestone: 1_801_440_000 }); // February 01, 2027 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 28e18, milestone: 1_803_859_200 }); // March 01, 2027 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 27e18, milestone: 1_806_537_600 }); // April 01, 2027 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 27e18, milestone: 1_809_129_600 }); // May 01, 2027 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 27e18, milestone: 1_811_808_000 }); // June 01, 2027 at 00:00:00 UTC
        segments[36] = getSegment({ amount: 27e18, milestone: 1_814_400_000 }); // July 01, 2027 at 00:00:00 UTC
        segments[37] = getSegment({ amount: 27e18, milestone: 1_817_078_400 }); // August 01, 2027 at 00:00:00 UTC
        segments[38] = getSegment({ amount: 28e18, milestone: 1_819_756_800 }); // September 01, 2027 at 00:00:00 UTC
        segments[39] = getSegment({ amount: 27e18, milestone: 1_822_348_800 }); // October 01, 2027 at 00:00:00 UTC
        segments[40] = getSegment({ amount: 27e18, milestone: 1_825_027_200 }); // November 01, 2027 at 00:00:00 UTC
        segments[41] = getSegment({ amount: 27e18, milestone: 1_827_619_200 }); // December 01, 2027 at 00:00:00 UTC
        segments[42] = getSegment({ amount: 27e18, milestone: 1_830_297_600 }); // January 01, 2028 at 00:00:00 UTC
        segments[43] = getSegment({ amount: 27e18, milestone: 1_832_976_000 }); // February 01, 2028 at 00:00:00 UTC
        segments[44] = getSegment({ amount: 28e18, milestone: 1_835_481_600 }); // March 01, 2028 at 00:00:00 UTC
        segments[45] = getSegment({ amount: 27e18, milestone: 1_838_160_000 }); // April 01, 2028 at 00:00:00 UTC
        segments[46] = getSegment({ amount: 27e18, milestone: 1_840_752_000 }); // May 01, 2028 at 00:00:00 UTC
        segments[47] = getSegment({ amount: 27e18, milestone: 1_843_430_400 }); // June 01, 2028 at 00:00:00 UTC
        return segments;
    }
}
