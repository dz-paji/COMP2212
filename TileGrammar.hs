{-# OPTIONS_GHC -w #-}
module TileGrammar where 
import TileTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,227) ([25600,65534,0,0,16384,0,512,0,0,0,0,0,15361,0,64,4100,0,0,8192,0,0,0,65330,127,32768,0,0,0,1,0,0,2,0,0,4,0,0,8,0,0,16,0,0,32,0,0,64,0,0,128,0,0,256,0,0,512,0,0,1024,0,0,2048,0,0,0,0,0,8,0,0,24576,0,0,32800,0,0,0,1,0,0,2,0,0,6,0,512,0,0,0,0,0,0,0,0,0,0,0,0,192,0,16384,0,0,0,0,6,32768,0,0,512,0,0,1024,0,0,63232,1,2,192,0,0,0,0,0,0,0,0,0,0,0,0,0,30,8192,512,60,16384,1024,52352,8191,0,48,0,4096,0,0,1984,192,0,16384,0,0,0,0,0,16096,2,0,24,4,0,48,32768,65484,31,61440,0,256,57360,1,512,49184,0,16384,32832,1,32768,128,3,0,256,6,0,512,12,0,1024,24,0,2048,48,0,4096,96,0,8192,25600,65534,0,384,0,32768,0,0,0,1,0,0,2,0,63488,0,0,61440,8193,0,0,0,0,0,0,0,0,32768,1,0,159,3,0,256,0,0,252,0,0,248,0,0,0,32,0,0,480,0,8194,0,0,3968,0,0,0,0,0,0,0,0,0,0,0,0,0,0,49152,1,0,32768,3,0,49152,7,0,32768,32783,1,0,128,0,0,62,6,0,512,0,0,0,0,0,0,1024,0,2048,0,0,0,0,0,0,0,0,7936,36865,65529,3,0,0,31744,0,0,63488,0,0,96,16,0,0,24584,0,0,32,0,32768,32911,7,2048,128,0,0,0,0,0,256,0,12288,512,24,0,2048,0,0,992,12800,32767,0,0,0,40960,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","ExpCalc","ExpBool","int","var","true","false","if","then","else","new","let","while","for","do","REVERSE","ROTATE","REFLECTX","REFLECTY","BLANK","LOAD","SCALE","TILECOMB","TILEAND","TILEOR","PRINT","CREATECANVAS","OUTFILE","SUBTITLE","'&&'","'||'","'!!'","'<'","'>'","'=='","'='","'+'","'-'","'*'","'/'","'^'","','","';'","'('","')'","%eof"]
        bit_start = st Prelude.* 49
        bit_end = (st Prelude.+ 1) Prelude.* 49
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..48]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (18) = happyShift action_7
action_0 (19) = happyShift action_8
action_0 (20) = happyShift action_9
action_0 (21) = happyShift action_10
action_0 (22) = happyShift action_11
action_0 (23) = happyShift action_12
action_0 (24) = happyShift action_13
action_0 (25) = happyShift action_14
action_0 (26) = happyShift action_15
action_0 (27) = happyShift action_16
action_0 (28) = happyShift action_17
action_0 (29) = happyShift action_18
action_0 (30) = happyShift action_2
action_0 (31) = happyShift action_19
action_0 (32) = happyShift action_20
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (30) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_46
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (46) = happyShift action_45
action_3 (49) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_39
action_4 (8) = happyShift action_40
action_4 (9) = happyShift action_41
action_4 (10) = happyShift action_42
action_4 (35) = happyShift action_43
action_4 (47) = happyShift action_44
action_4 (5) = happyGoto action_37
action_4 (6) = happyGoto action_38
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (8) = happyShift action_36
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_35
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (11) = happyShift action_4
action_7 (14) = happyShift action_5
action_7 (15) = happyShift action_6
action_7 (18) = happyShift action_7
action_7 (19) = happyShift action_8
action_7 (20) = happyShift action_9
action_7 (21) = happyShift action_10
action_7 (22) = happyShift action_11
action_7 (23) = happyShift action_12
action_7 (24) = happyShift action_13
action_7 (25) = happyShift action_14
action_7 (26) = happyShift action_15
action_7 (27) = happyShift action_16
action_7 (28) = happyShift action_17
action_7 (29) = happyShift action_18
action_7 (30) = happyShift action_2
action_7 (31) = happyShift action_19
action_7 (32) = happyShift action_20
action_7 (4) = happyGoto action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_33
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_32
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_31
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_30
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_29
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_28
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_27
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_26
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_25
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_24
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_23
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_22
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (47) = happyShift action_74
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_10

action_23 (7) = happyShift action_39
action_23 (8) = happyShift action_40
action_23 (47) = happyShift action_48
action_23 (5) = happyGoto action_73
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_72
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_71
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_70
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_39
action_27 (8) = happyShift action_40
action_27 (47) = happyShift action_48
action_27 (5) = happyGoto action_69
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_2

action_29 _ = happyReduce_7

action_30 _ = happyReduce_6

action_31 _ = happyReduce_5

action_32 (7) = happyShift action_39
action_32 (8) = happyShift action_40
action_32 (47) = happyShift action_48
action_32 (5) = happyGoto action_68
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_3

action_34 (16) = happyShift action_66
action_34 (17) = happyShift action_67
action_34 (46) = happyShift action_45
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (39) = happyShift action_65
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (39) = happyShift action_64
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (36) = happyShift action_56
action_37 (37) = happyShift action_57
action_37 (38) = happyShift action_58
action_37 (40) = happyShift action_59
action_37 (41) = happyShift action_60
action_37 (42) = happyShift action_61
action_37 (43) = happyShift action_62
action_37 (44) = happyShift action_63
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (12) = happyShift action_53
action_38 (33) = happyShift action_54
action_38 (34) = happyShift action_55
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_27

action_40 _ = happyReduce_28

action_41 _ = happyReduce_38

action_42 _ = happyReduce_39

action_43 (7) = happyShift action_39
action_43 (8) = happyShift action_40
action_43 (9) = happyShift action_41
action_43 (10) = happyShift action_42
action_43 (35) = happyShift action_43
action_43 (47) = happyShift action_44
action_43 (5) = happyGoto action_37
action_43 (6) = happyGoto action_52
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_39
action_44 (8) = happyShift action_40
action_44 (9) = happyShift action_41
action_44 (10) = happyShift action_42
action_44 (35) = happyShift action_43
action_44 (47) = happyShift action_44
action_44 (5) = happyGoto action_50
action_44 (6) = happyGoto action_51
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (11) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (15) = happyShift action_6
action_45 (18) = happyShift action_7
action_45 (19) = happyShift action_8
action_45 (20) = happyShift action_9
action_45 (21) = happyShift action_10
action_45 (22) = happyShift action_11
action_45 (23) = happyShift action_12
action_45 (24) = happyShift action_13
action_45 (25) = happyShift action_14
action_45 (26) = happyShift action_15
action_45 (27) = happyShift action_16
action_45 (28) = happyShift action_17
action_45 (29) = happyShift action_18
action_45 (30) = happyShift action_2
action_45 (31) = happyShift action_19
action_45 (32) = happyShift action_20
action_45 (4) = happyGoto action_49
action_45 _ = happyReduce_21

action_46 (7) = happyShift action_39
action_46 (8) = happyShift action_40
action_46 (47) = happyShift action_48
action_46 (5) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (40) = happyShift action_59
action_47 (41) = happyShift action_60
action_47 (42) = happyShift action_61
action_47 (43) = happyShift action_62
action_47 (44) = happyShift action_63
action_47 _ = happyReduce_1

action_48 (7) = happyShift action_39
action_48 (8) = happyShift action_40
action_48 (47) = happyShift action_48
action_48 (5) = happyGoto action_97
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_20

action_50 (36) = happyShift action_56
action_50 (37) = happyShift action_57
action_50 (38) = happyShift action_58
action_50 (40) = happyShift action_59
action_50 (41) = happyShift action_60
action_50 (42) = happyShift action_61
action_50 (43) = happyShift action_62
action_50 (44) = happyShift action_63
action_50 (48) = happyShift action_96
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (33) = happyShift action_54
action_51 (34) = happyShift action_55
action_51 (48) = happyShift action_95
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (33) = happyShift action_54
action_52 (34) = happyShift action_55
action_52 _ = happyReduce_32

action_53 (11) = happyShift action_4
action_53 (14) = happyShift action_5
action_53 (15) = happyShift action_6
action_53 (18) = happyShift action_7
action_53 (19) = happyShift action_8
action_53 (20) = happyShift action_9
action_53 (21) = happyShift action_10
action_53 (22) = happyShift action_11
action_53 (23) = happyShift action_12
action_53 (24) = happyShift action_13
action_53 (25) = happyShift action_14
action_53 (26) = happyShift action_15
action_53 (27) = happyShift action_16
action_53 (28) = happyShift action_17
action_53 (29) = happyShift action_18
action_53 (30) = happyShift action_2
action_53 (31) = happyShift action_19
action_53 (32) = happyShift action_20
action_53 (4) = happyGoto action_94
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyShift action_39
action_54 (8) = happyShift action_40
action_54 (9) = happyShift action_41
action_54 (10) = happyShift action_42
action_54 (35) = happyShift action_43
action_54 (47) = happyShift action_44
action_54 (5) = happyGoto action_37
action_54 (6) = happyGoto action_93
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_39
action_55 (8) = happyShift action_40
action_55 (9) = happyShift action_41
action_55 (10) = happyShift action_42
action_55 (35) = happyShift action_43
action_55 (47) = happyShift action_44
action_55 (5) = happyGoto action_37
action_55 (6) = happyGoto action_92
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_39
action_56 (8) = happyShift action_40
action_56 (39) = happyShift action_91
action_56 (47) = happyShift action_48
action_56 (5) = happyGoto action_90
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_39
action_57 (8) = happyShift action_40
action_57 (39) = happyShift action_89
action_57 (47) = happyShift action_48
action_57 (5) = happyGoto action_88
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_39
action_58 (8) = happyShift action_40
action_58 (47) = happyShift action_48
action_58 (5) = happyGoto action_87
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_39
action_59 (8) = happyShift action_40
action_59 (47) = happyShift action_48
action_59 (5) = happyGoto action_86
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (7) = happyShift action_39
action_60 (8) = happyShift action_40
action_60 (47) = happyShift action_48
action_60 (5) = happyGoto action_85
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (7) = happyShift action_39
action_61 (8) = happyShift action_40
action_61 (47) = happyShift action_48
action_61 (5) = happyGoto action_84
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_39
action_62 (8) = happyShift action_40
action_62 (47) = happyShift action_48
action_62 (5) = happyGoto action_83
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_39
action_63 (8) = happyShift action_40
action_63 (47) = happyShift action_48
action_63 (5) = happyGoto action_82
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (11) = happyShift action_4
action_64 (14) = happyShift action_5
action_64 (15) = happyShift action_6
action_64 (18) = happyShift action_7
action_64 (19) = happyShift action_8
action_64 (20) = happyShift action_9
action_64 (21) = happyShift action_10
action_64 (22) = happyShift action_11
action_64 (23) = happyShift action_12
action_64 (24) = happyShift action_13
action_64 (25) = happyShift action_14
action_64 (26) = happyShift action_15
action_64 (27) = happyShift action_16
action_64 (28) = happyShift action_17
action_64 (29) = happyShift action_18
action_64 (30) = happyShift action_2
action_64 (31) = happyShift action_19
action_64 (32) = happyShift action_20
action_64 (4) = happyGoto action_81
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_39
action_65 (8) = happyShift action_40
action_65 (47) = happyShift action_48
action_65 (5) = happyGoto action_80
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (47) = happyShift action_79
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (47) = happyShift action_78
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (40) = happyShift action_59
action_68 (41) = happyShift action_60
action_68 (42) = happyShift action_61
action_68 (43) = happyShift action_62
action_68 (44) = happyShift action_63
action_68 _ = happyReduce_4

action_69 (40) = happyShift action_59
action_69 (41) = happyShift action_60
action_69 (42) = happyShift action_61
action_69 (43) = happyShift action_62
action_69 (44) = happyShift action_63
action_69 _ = happyReduce_8

action_70 (8) = happyShift action_77
action_70 _ = happyFail (happyExpListPerState 70)

action_71 _ = happyReduce_11

action_72 _ = happyReduce_12

action_73 (7) = happyShift action_39
action_73 (8) = happyShift action_40
action_73 (40) = happyShift action_59
action_73 (41) = happyShift action_60
action_73 (42) = happyShift action_61
action_73 (43) = happyShift action_62
action_73 (44) = happyShift action_63
action_73 (47) = happyShift action_48
action_73 (5) = happyGoto action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (7) = happyShift action_39
action_74 (8) = happyShift action_40
action_74 (47) = happyShift action_48
action_74 (5) = happyGoto action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (40) = happyShift action_59
action_75 (41) = happyShift action_60
action_75 (42) = happyShift action_61
action_75 (43) = happyShift action_62
action_75 (44) = happyShift action_63
action_75 (45) = happyShift action_103
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (40) = happyShift action_59
action_76 (41) = happyShift action_60
action_76 (42) = happyShift action_61
action_76 (43) = happyShift action_62
action_76 (44) = happyShift action_63
action_76 _ = happyReduce_9

action_77 _ = happyReduce_13

action_78 (8) = happyShift action_102
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (7) = happyShift action_39
action_79 (8) = happyShift action_40
action_79 (9) = happyShift action_41
action_79 (10) = happyShift action_42
action_79 (35) = happyShift action_43
action_79 (47) = happyShift action_44
action_79 (5) = happyGoto action_37
action_79 (6) = happyGoto action_101
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (40) = happyShift action_59
action_80 (41) = happyShift action_60
action_80 (42) = happyShift action_61
action_80 (43) = happyShift action_62
action_80 (44) = happyShift action_63
action_80 _ = happyReduce_16

action_81 (46) = happyShift action_45
action_81 _ = happyReduce_15

action_82 _ = happyReduce_22

action_83 _ = happyReduce_24

action_84 _ = happyReduce_23

action_85 (42) = happyShift action_61
action_85 (43) = happyShift action_62
action_85 (44) = happyShift action_63
action_85 _ = happyReduce_26

action_86 (42) = happyShift action_61
action_86 (43) = happyShift action_62
action_86 (44) = happyShift action_63
action_86 _ = happyReduce_25

action_87 (40) = happyShift action_59
action_87 (41) = happyShift action_60
action_87 (42) = happyShift action_61
action_87 (43) = happyShift action_62
action_87 (44) = happyShift action_63
action_87 _ = happyReduce_37

action_88 (40) = happyShift action_59
action_88 (41) = happyShift action_60
action_88 (42) = happyShift action_61
action_88 (43) = happyShift action_62
action_88 (44) = happyShift action_63
action_88 _ = happyReduce_35

action_89 (7) = happyShift action_39
action_89 (8) = happyShift action_40
action_89 (47) = happyShift action_48
action_89 (5) = happyGoto action_100
action_89 _ = happyFail (happyExpListPerState 89)

action_90 (40) = happyShift action_59
action_90 (41) = happyShift action_60
action_90 (42) = happyShift action_61
action_90 (43) = happyShift action_62
action_90 (44) = happyShift action_63
action_90 _ = happyReduce_33

action_91 (7) = happyShift action_39
action_91 (8) = happyShift action_40
action_91 (47) = happyShift action_48
action_91 (5) = happyGoto action_99
action_91 _ = happyFail (happyExpListPerState 91)

action_92 _ = happyReduce_31

action_93 _ = happyReduce_30

action_94 (13) = happyShift action_98
action_94 (46) = happyShift action_45
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_40

action_96 _ = happyReduce_29

action_97 (40) = happyShift action_59
action_97 (41) = happyShift action_60
action_97 (42) = happyShift action_61
action_97 (43) = happyShift action_62
action_97 (44) = happyShift action_63
action_97 (48) = happyShift action_96
action_97 _ = happyFail (happyExpListPerState 97)

action_98 (11) = happyShift action_4
action_98 (14) = happyShift action_5
action_98 (15) = happyShift action_6
action_98 (18) = happyShift action_7
action_98 (19) = happyShift action_8
action_98 (20) = happyShift action_9
action_98 (21) = happyShift action_10
action_98 (22) = happyShift action_11
action_98 (23) = happyShift action_12
action_98 (24) = happyShift action_13
action_98 (25) = happyShift action_14
action_98 (26) = happyShift action_15
action_98 (27) = happyShift action_16
action_98 (28) = happyShift action_17
action_98 (29) = happyShift action_18
action_98 (30) = happyShift action_2
action_98 (31) = happyShift action_19
action_98 (32) = happyShift action_20
action_98 (4) = happyGoto action_107
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (40) = happyShift action_59
action_99 (41) = happyShift action_60
action_99 (42) = happyShift action_61
action_99 (43) = happyShift action_62
action_99 (44) = happyShift action_63
action_99 _ = happyReduce_34

action_100 (40) = happyShift action_59
action_100 (41) = happyShift action_60
action_100 (42) = happyShift action_61
action_100 (43) = happyShift action_62
action_100 (44) = happyShift action_63
action_100 _ = happyReduce_36

action_101 (33) = happyShift action_54
action_101 (34) = happyShift action_55
action_101 (48) = happyShift action_106
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (46) = happyShift action_105
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (7) = happyShift action_39
action_103 (8) = happyShift action_40
action_103 (47) = happyShift action_48
action_103 (5) = happyGoto action_104
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (40) = happyShift action_59
action_104 (41) = happyShift action_60
action_104 (42) = happyShift action_61
action_104 (43) = happyShift action_62
action_104 (44) = happyShift action_63
action_104 (48) = happyShift action_109
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (7) = happyShift action_39
action_105 (8) = happyShift action_40
action_105 (9) = happyShift action_41
action_105 (10) = happyShift action_42
action_105 (35) = happyShift action_43
action_105 (47) = happyShift action_44
action_105 (5) = happyGoto action_37
action_105 (6) = happyGoto action_108
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_18

action_107 (46) = happyShift action_45
action_107 _ = happyReduce_17

action_108 (33) = happyShift action_54
action_108 (34) = happyShift action_55
action_108 (46) = happyShift action_111
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (7) = happyShift action_39
action_109 (8) = happyShift action_40
action_109 (47) = happyShift action_48
action_109 (5) = happyGoto action_110
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (40) = happyShift action_59
action_110 (41) = happyShift action_60
action_110 (42) = happyShift action_61
action_110 (43) = happyShift action_62
action_110 (44) = happyShift action_63
action_110 _ = happyReduce_14

action_111 (11) = happyShift action_4
action_111 (14) = happyShift action_5
action_111 (15) = happyShift action_6
action_111 (18) = happyShift action_7
action_111 (19) = happyShift action_8
action_111 (20) = happyShift action_9
action_111 (21) = happyShift action_10
action_111 (22) = happyShift action_11
action_111 (23) = happyShift action_12
action_111 (24) = happyShift action_13
action_111 (25) = happyShift action_14
action_111 (26) = happyShift action_15
action_111 (27) = happyShift action_16
action_111 (28) = happyShift action_17
action_111 (29) = happyShift action_18
action_111 (30) = happyShift action_2
action_111 (31) = happyShift action_19
action_111 (32) = happyShift action_20
action_111 (4) = happyGoto action_112
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (46) = happyShift action_45
action_112 (48) = happyShift action_113
action_112 _ = happyFail (happyExpListPerState 112)

action_113 _ = happyReduce_19

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (CreateCanvas happy_var_2 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Load happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_2  4 happyReduction_3
happyReduction_3 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Reverse happy_var_2
	)
happyReduction_3 _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Rotate happy_var_2 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  4 happyReduction_5
happyReduction_5 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (ReflectX happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_2  4 happyReduction_6
happyReduction_6 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (ReflectY happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Blank happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Scale happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Print happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_2  4 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (OutFile happy_var_2
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TileAnd happy_var_2 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TileOr happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 4 4 happyReduction_13
happyReduction_13 ((HappyTerminal (TokenVar _ happy_var_4)) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TileComb happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 8 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn5  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Subtitle happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (NewTile happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 4 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Assign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 10 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_5)) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (For happy_var_2 happy_var_5 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  4 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSeq happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  4 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSemi happy_var_1
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  5 happyReduction_22
happyReduction_22 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  5 happyReduction_27
happyReduction_27 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (TileInt happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Get happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  5 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negation happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happyReduce 4 6 happyReduction_34
happyReduction_34 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsLessEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsGreater happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 6 happyReduction_36
happyReduction_36 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsGreaterEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  6 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  6 happyReduction_38
happyReduction_38 _
	 =  HappyAbsSyn6
		 (TileTrue
	)

happyReduce_39 = happySpecReduce_1  6 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn6
		 (TileFalse
	)

happyReduce_40 = happySpecReduce_3  6 happyReduction_40
happyReduction_40 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 49 49 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenInt _ happy_dollar_dollar -> cont 7;
	TokenVar _ happy_dollar_dollar -> cont 8;
	TokenTrue _ -> cont 9;
	TokenFalse _ -> cont 10;
	TokenIf _ -> cont 11;
	TokenThen _ -> cont 12;
	TokenElse _ -> cont 13;
	TokenNew _ -> cont 14;
	TokenLet _ -> cont 15;
	TokenWhile _ -> cont 16;
	TokenFor _ -> cont 17;
	TokenDo _ -> cont 18;
	TokenReverse _ -> cont 19;
	TokenRotate _ -> cont 20;
	TokenReflectX _ -> cont 21;
	TokenReflectY _ -> cont 22;
	TokenBlank _ -> cont 23;
	TokenLoad _ -> cont 24;
	TokenScale _ -> cont 25;
	TokenTileComb _ -> cont 26;
	TokenTileAnd _ -> cont 27;
	TokenTileOr _ -> cont 28;
	TokenPrint _ -> cont 29;
	TokenCreateCanvas _ -> cont 30;
	TokenOutFile _ -> cont 31;
	TokenSubtitle _ -> cont 32;
	TokenAnd _ -> cont 33;
	TokenOr _ -> cont 34;
	TokenNegation _ -> cont 35;
	TokenLess _ -> cont 36;
	TokenGreater _ -> cont 37;
	TokenEq _ -> cont 38;
	TokenAssign _ -> cont 39;
	TokenPlus _ -> cont 40;
	TokenMinus _ -> cont 41;
	TokenTimes _ -> cont 42;
	TokenDiv _ -> cont 43;
	TokenExp _ -> cont 44;
	TokenComma _ -> cont 45;
	TokenStatSep _ -> cont 46;
	TokenLeftParen _ -> cont 47;
	TokenRightParen _ -> cont 48;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 49 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data StringType = String String | VarName String | TileName String 
    deriving (Show, Eq)

type TileName = String 
type VarName = String
type Env = [(String, Int)]

data Exp
    = CreateCanvas TileName ExpCalc |
    Load String  |
    Reverse TileName String |
    Rotate TileName ExpCalc |
    ReflectX TileName  |
    ReflectY TileName  |
    Blank TileName  |       
    Scale TileName ExpCalc  |    
    Print TileName ExpCalc ExpCalc  | 
    Subtitle TileName ExpCalc ExpCalc ExpCalc  |
    OutFile TileName  |
    TileComb TileName TileName String |
    TileAnd TileName TileName |
    TileOr TileName TileName |
    IfElse ExpBool Exp Exp  |
    While Exp ExpBool  |
    For Exp VarName ExpBool Exp |
    NewTile TileName Exp  |
    Assign VarName ExpCalc  |
    StatSeq Exp Exp  |
    StatSemi Exp |
    --Cl VarName Env
    deriving (Show,Eq)

data ExpCalc
    = Expo ExpCalc ExpCalc |
    Times ExpCalc ExpCalc |
    Div ExpCalc ExpCalc |
    Minus ExpCalc ExpCalc |
    Plus ExpCalc ExpCalc |
    TileInt Int |
    Get VarName 
    deriving (Show,Eq)

data ExpBool 
    = And ExpBool ExpBool |
    Or ExpBool ExpBool |
    Negation ExpBool |
    IsLess ExpCalc ExpCalc |
    IsLessEq ExpCalc ExpCalc |
    IsGreater ExpCalc ExpCalc |
    IsGreaterEq ExpCalc ExpCalc |
    IsEq ExpCalc ExpCalc |
    TileTrue |
    TileFalse  
    deriving (Show,Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
