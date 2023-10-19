// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.8.19;

import { ExactlyBaseScript, LockupDynamic } from "./ExactlyBase.s.sol";

contract ExactlySchedule2Script is ExactlyBaseScript {
    function run() public override { }

    function aggregateAmount() public pure override returns (uint128) {
        return 2_023_841e18;
    }

    function getUsersParams() public override returns (LockupDynamic.CreateWithMilestones[] memory) {
        LockupDynamic.CreateWithMilestones[] memory usersParams = new LockupDynamic.CreateWithMilestones[](35);
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
        return usersParams;
    }

    function getParamsForUser1()
        public
        csv("1-0x749Ad5e67F52e9885B33f6F6625574ddDaDb52eE")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x749Ad5e67F52e9885B33f6F6625574ddDaDb52eE,
            segments: getSegmentsForUser1(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 732_073e18
        });
    }

    function getParamsForUser2()
        public
        csv("2-0xc6Ccecb3B0C1474294Af5C3579A888B9F947cF97")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xc6Ccecb3B0C1474294Af5C3579A888B9F947cF97,
            segments: getSegmentsForUser2(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 11_734e18
        });
    }

    function getParamsForUser3()
        public
        csv("3-0x85F2DF88a273a632C44f48CC6F94469500CED42b")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x85F2DF88a273a632C44f48CC6F94469500CED42b,
            segments: getSegmentsForUser3(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser4()
        public
        csv("4-0x677Ffe1Ee372e4f6aF8b6583B0012289940e2324")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x677Ffe1Ee372e4f6aF8b6583B0012289940e2324,
            segments: getSegmentsForUser4(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 50_566e18
        });
    }

    function getParamsForUser5()
        public
        csv("5-0x0E8b32C39AF8CC81f2471810eddFd5A3d3EF0dce")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x0E8b32C39AF8CC81f2471810eddFd5A3d3EF0dce,
            segments: getSegmentsForUser5(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 6193e18
        });
    }

    function getParamsForUser6()
        public
        csv("6-0x74aD20a33B37cCA9f5Bd150BB4ce49cF50d0b5eb")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x74aD20a33B37cCA9f5Bd150BB4ce49cF50d0b5eb,
            segments: getSegmentsForUser6(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 6275e18
        });
    }

    function getParamsForUser7()
        public
        csv("7-0x6EAbb5FaaEEF7a14ABfDE529F1dB80384f405E17")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x6EAbb5FaaEEF7a14ABfDE529F1dB80384f405E17,
            segments: getSegmentsForUser7(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 55_003e18
        });
    }

    function getParamsForUser8()
        public
        csv("8-0x27A818372670575914B50ff02580335e458fc696")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x27A818372670575914B50ff02580335e458fc696,
            segments: getSegmentsForUser8(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 550_196e18
        });
    }

    function getParamsForUser9()
        public
        csv("9-0xFab398B2cbB51Cf2d00D8819f57853dafC721CeF")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xFab398B2cbB51Cf2d00D8819f57853dafC721CeF,
            segments: getSegmentsForUser9(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 76_924e18
        });
    }

    function getParamsForUser10()
        public
        csv("10-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser10(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 84_746e18
        });
    }

    function getParamsForUser11()
        public
        csv("11-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser11(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 38_462e18
        });
    }

    function getParamsForUser12()
        public
        csv("12-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser12(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 84_746e18
        });
    }

    function getParamsForUser13()
        public
        csv("13-0xf484D78306E068BfE682829304344cf15FBedB49")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xf484D78306E068BfE682829304344cf15FBedB49,
            segments: getSegmentsForUser13(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 38_462e18
        });
    }

    function getParamsForUser14()
        public
        csv("14-0x7ea226f9fBAbFf6263D6937878CCa7867f2bB091")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x7ea226f9fBAbFf6263D6937878CCa7867f2bB091,
            segments: getSegmentsForUser14(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 38_462e18
        });
    }

    function getParamsForUser15()
        public
        csv("15-0x2C94c9590c5A4A691B46a0D6276DC90468d9f635")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x2C94c9590c5A4A691B46a0D6276DC90468d9f635,
            segments: getSegmentsForUser15(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 28_683e18
        });
    }

    function getParamsForUser16()
        public
        csv("16-0x949f482347B02b25Df153942D84501Efb4698CB1")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x949f482347B02b25Df153942D84501Efb4698CB1,
            segments: getSegmentsForUser16(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser17()
        public
        csv("17-0x8c405dD569d597720c04e3c1577cE3841e206cE5")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x8c405dD569d597720c04e3c1577cE3841e206cE5,
            segments: getSegmentsForUser17(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser18()
        public
        csv("18-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser18(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser19()
        public
        csv("19-0xe23aa13d53a728eca4b1ae59ae008eef89c79f51")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xE23Aa13d53A728ECa4B1ae59Ae008Eef89c79f51,
            segments: getSegmentsForUser19(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser20()
        public
        csv("20-0x9A3CcbF4f2Fa1899a2165A367AcE6532Db592646")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x9A3CcbF4f2Fa1899a2165A367AcE6532Db592646,
            segments: getSegmentsForUser20(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser21()
        public
        csv("21-0xB913A66828e3c5E9e817876a3059F3baE77ECaFe")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xB913A66828e3c5E9e817876a3059F3baE77ECaFe,
            segments: getSegmentsForUser21(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 7823e18
        });
    }

    function getParamsForUser22()
        public
        csv("22-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser22(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 19_231e18
        });
    }

    function getParamsForUser23()
        public
        csv("23-0xB35f6cbbd5f0b1eC1cbb50c5bf2620fd5f2918D4")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xB35f6cbbd5f0b1eC1cbb50c5bf2620fd5f2918D4,
            segments: getSegmentsForUser23(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser24()
        public
        csv("24-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser24(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser25()
        public
        csv("25-0x5D6977aC3E7c8139f1C607308292ee4Cc4773865")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x5D6977aC3E7c8139f1C607308292ee4Cc4773865,
            segments: getSegmentsForUser25(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 11_734e18
        });
    }

    function getParamsForUser26()
        public
        csv("26-0x815070A584d52384A1CdbFf844a38ae657e93aC8")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x815070A584d52384A1CdbFf844a38ae657e93aC8,
            segments: getSegmentsForUser26(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
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
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9452e18
        });
    }

    function getParamsForUser28()
        public
        csv("28-0xb3C5839c98530efe921e3f35A0CF1bDf03EAA08d")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xb3C5839c98530efe921e3f35A0CF1bDf03EAA08d,
            segments: getSegmentsForUser28(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 10_104e18
        });
    }

    function getParamsForUser29()
        public
        csv("29-0xb9d3f7cc1b916e5da7537d28964ffabbcf921a87")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xB9d3F7cc1B916e5dA7537d28964fFaBbCf921A87,
            segments: getSegmentsForUser29(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 978e18
        });
    }

    function getParamsForUser30()
        public
        csv("30-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser30(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 5541e18
        });
    }

    function getParamsForUser31()
        public
        csv("31-0xDe3258C1C45a557F4924d1E4e3d0A4E5341607Ee")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xDe3258C1C45a557F4924d1E4e3d0A4E5341607Ee,
            segments: getSegmentsForUser31(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 18_579e18
        });
    }

    function getParamsForUser32()
        public
        csv("32-0xCDA47d2cdA26ce48f48eDAB86CE0Ab52C153Ba7F")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xCDA47d2cdA26ce48f48eDAB86CE0Ab52C153Ba7F,
            segments: getSegmentsForUser32(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 2282e18
        });
    }

    function getParamsForUser33()
        public
        csv("33-0xF6bC475378c2DE2465Ef86403A8492C3A89EF64C")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xF6bC475378c2DE2465Ef86403A8492C3A89EF64C,
            segments: getSegmentsForUser33(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 978e18
        });
    }

    function getParamsForUser34()
        public
        csv("34-0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0xC0d6Bc5d052d1e74523AD79dD5A954276c9286D3,
            segments: getSegmentsForUser34(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 9126e18
        });
    }

    function getParamsForUser35()
        public
        csv("35-0x6320d43FE9939efAD4d48bfCdC63C06BAFc2FE3d")
        returns (LockupDynamic.CreateWithMilestones memory)
    {
        return LockupDynamic.CreateWithMilestones({
            asset: EXA,
            broker: broker,
            cancelable: true,
            recipient: 0x6320d43FE9939efAD4d48bfCdC63C06BAFc2FE3d,
            segments: getSegmentsForUser35(),
            sender: EXACTLY_PROTOCOL_OWNER,
            startTime: 1_704_067_200, // January 01, 2024 at 00:00:00 UTC
            totalAmount: 1304e18
        });
    }

    function getSegmentsForUser1() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 20_335e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 20_336e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 20_335e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 20_335e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 20_336e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 20_335e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 20_336e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 20_335e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 20_335e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 20_336e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 20_335e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 20_335e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 20_336e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 20_335e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 20_335e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 20_336e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 20_335e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 20_336e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 20_335e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 20_335e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 20_336e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 20_335e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 20_335e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 20_336e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 20_335e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 20_335e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 20_336e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 20_335e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 20_335e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 20_336e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 20_335e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 20_336e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 20_335e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 20_335e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 20_336e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 20_335e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser2() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 326e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 326e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 326e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 326e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 326e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 326e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 326e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 326e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 326e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 325e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 326e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 326e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 326e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 326e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 326e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 326e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 326e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 326e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 326e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 326e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 326e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 326e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 326e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 326e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 326e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 326e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 326e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 325e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 326e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 326e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 326e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 326e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 326e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 326e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 326e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 326e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser3() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 263e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 263e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 262e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 263e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 262e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 263e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 262e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 263e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 263e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 262e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 263e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 262e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 263e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 262e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 263e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 262e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 263e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 263e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 262e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 263e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 262e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 263e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 262e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 263e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 263e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 262e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 263e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 262e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 263e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 262e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 263e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 262e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 263e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser4() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 1405e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1404e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1405e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1404e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1405e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1405e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1404e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1405e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1405e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1404e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1405e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1404e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1405e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1405e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1404e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1405e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1404e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1405e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1405e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1404e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1405e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1404e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1405e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1405e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1404e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1405e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1405e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1404e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1405e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1404e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1405e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1405e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1404e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1405e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1404e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1405e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser5() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 172e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 172e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 172e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 172e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 172e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 172e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 172e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 172e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 172e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 172e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 172e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 172e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 172e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 172e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 172e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 172e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 172e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 173e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 172e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 172e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 172e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 172e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 172e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 172e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 172e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 172e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 172e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 172e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 172e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 172e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 172e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 172e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 172e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 172e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 172e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 172e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser6() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 174e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 175e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 174e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 174e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 175e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 174e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 174e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 174e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 175e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 174e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 174e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 175e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 174e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 174e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 175e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 174e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 174e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 175e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 174e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 174e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 174e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 175e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 174e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 174e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 175e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 174e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 174e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 175e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 174e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 174e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 174e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 175e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 174e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 174e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 175e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 174e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser7() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 1528e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1528e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1528e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1527e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1528e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1528e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1528e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1528e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1528e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1528e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1527e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1528e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1528e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1528e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1528e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1528e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1528e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1528e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1527e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1528e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1528e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1528e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1528e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1528e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1528e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1527e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1528e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1528e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1528e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1528e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1528e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1528e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1527e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1528e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1528e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1528e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser8() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 15_283e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 15_283e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 15_284e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 15_283e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 15_283e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 15_283e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 15_284e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 15_283e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 15_283e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 15_283e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 15_283e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 15_284e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 15_283e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 15_283e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 15_283e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 15_284e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 15_283e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 15_283e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 15_283e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 15_283e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 15_284e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 15_283e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 15_283e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 15_283e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 15_284e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 15_283e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 15_283e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 15_283e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 15_283e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 15_284e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 15_283e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 15_283e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 15_283e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 15_284e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 15_283e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 15_283e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser9() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 2137e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 2137e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 2136e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 2137e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 2137e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 2137e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 2136e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 2137e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 2137e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 2137e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 2137e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 2136e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 2137e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 2137e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 2137e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 2136e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 2137e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 2137e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 2137e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 2137e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 2136e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 2137e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 2137e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 2137e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 2136e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 2137e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 2137e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 2137e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 2137e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 2136e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 2137e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 2137e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 2137e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 2136e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 2137e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 2137e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser10() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 2354e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 2354e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 2354e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 2354e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 2354e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 2354e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 2354e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 2354e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 2355e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 2354e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 2354e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 2354e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 2354e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 2354e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 2354e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 2354e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 2354e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 2354e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 2354e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 2354e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 2354e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 2354e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 2354e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 2354e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 2354e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 2354e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 2355e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 2354e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 2354e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 2354e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 2354e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 2354e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 2354e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 2354e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 2354e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 2354e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser11() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 1068e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1069e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1068e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1069e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1068e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1068e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1069e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1068e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1069e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1068e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1068e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1069e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1068e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1068e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1069e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1068e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1069e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1068e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1068e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1069e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1068e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1069e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1068e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1068e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1069e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1068e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1069e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1068e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1068e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1069e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1068e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1068e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1069e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1068e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1069e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1068e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser12() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 2354e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 2354e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 2354e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 2354e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 2354e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 2354e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 2354e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 2354e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 2355e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 2354e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 2354e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 2354e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 2354e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 2354e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 2354e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 2354e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 2354e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 2354e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 2354e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 2354e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 2354e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 2354e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 2354e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 2354e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 2354e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 2354e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 2355e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 2354e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 2354e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 2354e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 2354e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 2354e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 2354e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 2354e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 2354e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 2354e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser13() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 1068e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1069e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1068e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1069e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1068e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1068e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1069e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1068e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1069e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1068e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1068e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1069e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1068e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1068e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1069e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1068e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1069e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1068e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1068e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1069e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1068e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1069e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1068e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1068e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1069e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1068e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1069e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1068e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1068e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1069e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1068e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1068e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1069e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1068e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1069e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1068e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser14() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 1068e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 1069e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 1068e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 1069e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 1068e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 1068e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 1069e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 1068e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 1069e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 1068e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 1068e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 1069e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 1068e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 1068e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 1069e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 1068e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 1069e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 1068e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 1068e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 1069e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 1068e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 1069e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 1068e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 1068e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 1069e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 1068e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 1069e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 1068e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 1068e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 1069e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 1068e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 1068e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 1069e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 1068e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 1069e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 1068e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser15() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 797e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 797e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 796e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 797e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 797e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 797e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 796e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 797e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 797e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 797e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 796e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 797e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 797e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 797e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 796e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 797e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 797e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 797e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 796e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 797e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 797e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 797e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 796e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 797e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 797e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 797e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 796e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 797e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 797e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 797e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 796e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 797e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 797e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 797e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 796e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 797e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser16() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 534e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 534e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 535e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 534e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 534e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 534e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 534e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 535e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 534e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 534e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 534e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 534e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 535e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 534e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 534e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 534e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 534e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 535e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 534e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 534e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 534e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 534e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 534e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 535e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 534e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 534e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 534e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 534e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 535e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 534e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 534e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 534e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 534e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 535e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 534e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 534e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser17() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 534e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 534e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 535e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 534e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 534e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 534e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 534e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 535e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 534e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 534e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 534e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 534e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 535e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 534e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 534e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 534e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 534e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 535e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 534e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 534e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 534e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 534e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 534e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 535e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 534e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 534e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 534e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 534e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 535e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 534e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 534e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 534e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 534e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 535e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 534e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 534e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser18() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 534e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 534e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 535e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 534e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 534e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 534e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 534e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 535e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 534e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 534e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 534e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 534e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 535e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 534e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 534e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 534e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 534e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 535e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 534e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 534e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 534e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 534e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 534e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 535e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 534e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 534e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 534e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 534e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 535e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 534e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 534e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 534e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 534e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 535e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 534e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 534e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser19() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 263e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 263e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 262e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 263e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 262e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 263e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 262e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 263e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 263e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 262e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 263e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 262e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 263e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 262e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 263e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 262e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 263e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 263e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 262e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 263e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 262e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 263e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 262e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 263e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 263e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 262e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 263e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 262e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 263e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 262e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 263e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 262e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 263e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser20() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 534e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 534e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 535e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 534e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 534e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 534e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 534e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 535e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 534e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 534e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 534e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 534e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 535e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 534e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 534e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 534e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 534e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 535e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 534e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 534e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 534e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 534e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 534e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 535e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 534e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 534e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 534e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 534e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 535e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 534e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 534e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 534e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 534e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 535e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 534e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 534e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser21() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 217e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 218e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 217e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 217e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 218e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 217e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 217e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 217e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 218e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 217e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 217e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 218e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 217e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 217e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 218e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 217e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 217e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 218e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 217e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 217e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 217e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 218e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 217e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 217e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 218e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 217e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 217e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 218e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 217e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 217e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 217e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 218e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 217e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 217e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 218e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 217e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser22() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 534e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 534e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 535e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 534e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 534e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 534e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 534e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 535e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 534e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 534e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 534e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 534e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 535e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 534e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 534e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 534e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 534e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 535e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 534e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 534e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 534e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 534e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 534e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 535e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 534e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 534e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 534e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 534e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 535e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 534e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 534e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 534e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 534e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 535e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 534e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 534e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser23() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 263e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 263e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 262e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 263e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 262e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 263e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 262e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 263e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 263e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 262e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 263e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 262e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 263e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 262e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 263e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 262e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 263e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 263e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 262e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 263e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 262e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 263e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 262e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 263e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 263e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 262e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 263e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 262e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 263e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 262e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 263e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 262e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 263e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser24() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 263e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 263e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 262e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 263e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 262e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 263e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 262e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 263e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 263e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 262e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 263e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 262e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 263e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 262e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 263e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 262e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 263e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 263e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 262e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 263e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 262e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 263e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 262e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 263e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 263e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 262e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 263e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 262e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 263e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 262e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 263e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 262e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 263e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser25() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 326e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 326e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 326e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 326e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 326e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 326e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 326e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 326e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 326e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 325e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 326e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 326e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 326e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 326e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 326e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 326e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 326e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 326e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 326e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 326e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 326e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 326e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 326e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 326e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 326e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 326e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 326e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 325e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 326e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 326e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 326e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 326e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 326e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 326e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 326e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 326e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser26() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 263e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 263e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 262e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 263e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 262e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 263e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 262e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 263e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 263e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 262e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 263e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 262e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 263e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 262e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 263e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 262e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 263e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 263e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 262e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 263e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 262e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 263e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 262e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 263e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 263e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 262e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 263e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 262e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 263e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 262e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 263e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 262e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 263e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser27() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 263e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 262e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 263e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 262e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 263e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 262e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 263e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 262e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 263e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 263e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 262e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 263e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 262e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 263e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 262e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 263e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 262e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 263e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 263e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 262e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 263e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 262e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 263e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 262e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 263e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 262e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 263e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 263e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 262e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 263e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 262e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 263e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 262e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 263e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 262e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 263e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser28() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 281e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 280e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 281e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 281e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 280e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 281e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 281e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 280e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 281e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 281e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 280e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 281e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 281e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 280e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 281e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 281e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 280e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 281e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 281e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 280e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 281e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 281e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 280e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 281e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 281e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 280e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 281e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 281e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 280e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 281e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 281e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 280e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 281e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 281e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 280e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 281e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser29() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 27e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 27e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 28e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 27e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 27e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 27e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 27e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 27e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 28e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 27e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 27e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 27e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 27e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 27e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 28e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 27e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 27e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 27e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 27e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 27e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 28e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 27e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 27e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 27e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 27e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 27e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 28e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 27e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 27e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 27e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 27e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 27e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 28e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 27e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 27e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 27e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser30() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 154e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 154e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 154e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 154e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 154e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 154e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 153e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 154e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 154e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 154e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 154e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 154e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 154e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 154e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 154e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 154e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 154e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 154e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 153e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 154e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 154e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 154e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 154e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 154e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 154e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 154e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 154e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 154e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 154e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 154e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 153e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 154e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 154e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 154e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 154e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 154e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser31() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 516e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 516e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 516e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 516e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 516e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 517e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 516e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 516e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 516e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 516e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 516e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 516e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 516e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 516e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 516e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 516e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 516e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 517e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 516e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 516e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 516e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 516e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 516e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 516e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 516e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 516e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 516e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 516e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 516e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 517e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 516e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 516e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 516e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 516e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 516e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 516e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser32() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 63e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 64e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 63e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 64e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 63e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 63e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 64e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 63e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 64e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 63e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 63e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 64e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 63e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 63e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 64e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 63e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 64e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 63e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 63e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 64e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 63e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 64e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 63e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 63e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 64e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 63e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 64e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 63e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 63e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 64e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 63e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 63e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 64e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 63e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 64e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 63e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser33() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 27e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 27e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 28e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 27e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 27e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 27e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 27e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 27e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 28e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 27e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 27e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 27e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 27e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 27e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 28e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 27e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 27e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 27e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 27e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 27e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 28e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 27e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 27e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 27e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 27e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 27e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 28e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 27e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 27e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 27e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 27e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 27e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 28e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 27e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 27e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 27e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser34() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 254e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 253e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 254e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 253e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 254e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 253e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 254e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 253e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 254e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 253e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 254e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 253e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 254e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 253e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 254e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 253e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 254e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 253e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 254e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 253e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 254e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 253e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 254e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 253e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 254e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 253e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 254e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 253e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 254e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 253e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 254e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 253e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 254e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 253e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 254e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 253e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }

    function getSegmentsForUser35() public returns (LockupDynamic.Segment[] memory) {
        LockupDynamic.Segment[] memory segments = new LockupDynamic.Segment[](36);
        segments[0] = getSegment({ amount: 36e18, milestone: 1_706_745_600 }); // February 01, 2024 at 00:00:00 UTC
        segments[1] = getSegment({ amount: 36e18, milestone: 1_709_251_200 }); // March 01, 2024 at 00:00:00 UTC
        segments[2] = getSegment({ amount: 37e18, milestone: 1_711_929_600 }); // April 01, 2024 at 00:00:00 UTC
        segments[3] = getSegment({ amount: 36e18, milestone: 1_714_521_600 }); // May 01, 2024 at 00:00:00 UTC
        segments[4] = getSegment({ amount: 36e18, milestone: 1_717_200_000 }); // June 01, 2024 at 00:00:00 UTC
        segments[5] = getSegment({ amount: 36e18, milestone: 1_719_792_000 }); // July 01, 2024 at 00:00:00 UTC
        segments[6] = getSegment({ amount: 37e18, milestone: 1_722_470_400 }); // August 01, 2024 at 00:00:00 UTC
        segments[7] = getSegment({ amount: 36e18, milestone: 1_725_148_800 }); // September 01, 2024 at 00:00:00 UTC
        segments[8] = getSegment({ amount: 36e18, milestone: 1_727_740_800 }); // October 01, 2024 at 00:00:00 UTC
        segments[9] = getSegment({ amount: 36e18, milestone: 1_730_419_200 }); // November 01, 2024 at 00:00:00 UTC
        segments[10] = getSegment({ amount: 36e18, milestone: 1_733_011_200 }); // December 01, 2024 at 00:00:00 UTC
        segments[11] = getSegment({ amount: 37e18, milestone: 1_735_689_600 }); // January 01, 2025 at 00:00:00 UTC
        segments[12] = getSegment({ amount: 36e18, milestone: 1_738_368_000 }); // February 01, 2025 at 00:00:00 UTC
        segments[13] = getSegment({ amount: 36e18, milestone: 1_740_787_200 }); // March 01, 2025 at 00:00:00 UTC
        segments[14] = getSegment({ amount: 36e18, milestone: 1_743_465_600 }); // April 01, 2025 at 00:00:00 UTC
        segments[15] = getSegment({ amount: 37e18, milestone: 1_746_057_600 }); // May 01, 2025 at 00:00:00 UTC
        segments[16] = getSegment({ amount: 36e18, milestone: 1_748_736_000 }); // June 01, 2025 at 00:00:00 UTC
        segments[17] = getSegment({ amount: 36e18, milestone: 1_751_328_000 }); // July 01, 2025 at 00:00:00 UTC
        segments[18] = getSegment({ amount: 36e18, milestone: 1_754_006_400 }); // August 01, 2025 at 00:00:00 UTC
        segments[19] = getSegment({ amount: 36e18, milestone: 1_756_684_800 }); // September 01, 2025 at 00:00:00 UTC
        segments[20] = getSegment({ amount: 37e18, milestone: 1_759_276_800 }); // October 01, 2025 at 00:00:00 UTC
        segments[21] = getSegment({ amount: 36e18, milestone: 1_761_955_200 }); // November 01, 2025 at 00:00:00 UTC
        segments[22] = getSegment({ amount: 36e18, milestone: 1_764_547_200 }); // December 01, 2025 at 00:00:00 UTC
        segments[23] = getSegment({ amount: 36e18, milestone: 1_767_225_600 }); // January 01, 2026 at 00:00:00 UTC
        segments[24] = getSegment({ amount: 37e18, milestone: 1_769_904_000 }); // February 01, 2026 at 00:00:00 UTC
        segments[25] = getSegment({ amount: 36e18, milestone: 1_772_323_200 }); // March 01, 2026 at 00:00:00 UTC
        segments[26] = getSegment({ amount: 36e18, milestone: 1_775_001_600 }); // April 01, 2026 at 00:00:00 UTC
        segments[27] = getSegment({ amount: 36e18, milestone: 1_777_593_600 }); // May 01, 2026 at 00:00:00 UTC
        segments[28] = getSegment({ amount: 36e18, milestone: 1_780_272_000 }); // June 01, 2026 at 00:00:00 UTC
        segments[29] = getSegment({ amount: 37e18, milestone: 1_782_864_000 }); // July 01, 2026 at 00:00:00 UTC
        segments[30] = getSegment({ amount: 36e18, milestone: 1_785_542_400 }); // August 01, 2026 at 00:00:00 UTC
        segments[31] = getSegment({ amount: 36e18, milestone: 1_788_220_800 }); // September 01, 2026 at 00:00:00 UTC
        segments[32] = getSegment({ amount: 36e18, milestone: 1_790_812_800 }); // October 01, 2026 at 00:00:00 UTC
        segments[33] = getSegment({ amount: 37e18, milestone: 1_793_491_200 }); // November 01, 2026 at 00:00:00 UTC
        segments[34] = getSegment({ amount: 36e18, milestone: 1_796_083_200 }); // December 01, 2026 at 00:00:00 UTC
        segments[35] = getSegment({ amount: 36e18, milestone: 1_798_761_600 }); // January 01, 2027 at 00:00:00 UTC
        return segments;
    }
}
