{-# OPTIONS_GHC -w #-}
module TileGrammar where 
import TileTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,228) ([25600,65534,1,0,0,1,2048,0,0,0,0,0,49168,3,2048,128,2,0,0,8,0,0,39168,32767,0,128,0,0,512,0,0,2048,0,0,8192,0,0,32768,0,0,0,2,0,0,8,0,0,32,0,0,128,0,0,512,0,0,2048,0,0,8192,0,0,32768,0,0,0,2,0,0,0,0,2048,0,0,0,192,0,32768,512,0,0,2048,0,0,8192,0,0,49152,0,0,128,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,3072,0,0,8,0,0,0,384,0,64,0,0,2,0,0,0,0,0,2012,2048,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,15,8192,512,60,32768,2048,39168,32767,0,192,0,32768,0,0,31744,3072,0,0,8,0,0,0,0,28672,287,0,6144,1024,0,24576,0,39168,32767,0,960,0,32776,3840,0,32,3074,0,2048,12296,0,8192,49184,0,0,128,3,0,512,12,0,2048,48,0,8192,192,0,32768,768,0,0,3074,0,0,8,0,0,32,0,0,128,0,0,124,0,0,0,0,0,1984,128,0,0,0,0,0,0,0,0,12288,0,49152,49191,0,0,128,0,0,252,0,0,496,0,0,0,128,0,0,3840,0,32,2,0,61440,1,0,0,0,0,0,0,0,0,0,0,0,448,0,0,1792,0,0,7936,0,0,31744,3072,0,0,8,0,49152,49159,0,0,128,0,0,0,0,0,0,1024,0,4096,0,0,0,0,0,0,0,0,61440,17,65433,127,0,0,0,31,0,0,124,0,24576,4096,0,0,4096,192,0,32768,0,0,31744,15364,0,128,8,0,0,0,0,0,64,0,6144,256,12,0,2048,0,0,1984,25600,65534,1,0,0,0,5,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","ExpCalc","ExpBool","int","var","true","false","if","then","else","new","let","while","for","do","REVERSE","ROTATE","REFLECTX","REFLECTY","BLANK","CLONE","LOAD","SCALE","TILECOMB","TILEAND","TILEOR","PRINT","CREATECANVAS","OUTFILE","SUBTITLE","'&&'","'||'","'!!'","'<'","'>'","'=='","'='","'+'","'-'","'*'","'/'","'^'","','","';'","'('","')'","%eof"]
        bit_start = st * 50
        bit_end = (st + 1) * 50
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..49]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

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
action_0 (30) = happyShift action_19
action_0 (31) = happyShift action_2
action_0 (32) = happyShift action_20
action_0 (33) = happyShift action_21
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (31) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_48
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (47) = happyShift action_47
action_3 (50) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_41
action_4 (8) = happyShift action_42
action_4 (9) = happyShift action_43
action_4 (10) = happyShift action_44
action_4 (36) = happyShift action_45
action_4 (48) = happyShift action_46
action_4 (5) = happyGoto action_39
action_4 (6) = happyGoto action_40
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (8) = happyShift action_38
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_37
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
action_7 (30) = happyShift action_19
action_7 (31) = happyShift action_2
action_7 (32) = happyShift action_20
action_7 (33) = happyShift action_21
action_7 (4) = happyGoto action_36
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_35
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_34
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_33
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_32
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_31
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_30
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_29
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_28
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_27
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (8) = happyShift action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_24
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_23
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (48) = happyShift action_76
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_11

action_24 (7) = happyShift action_41
action_24 (8) = happyShift action_42
action_24 (48) = happyShift action_50
action_24 (5) = happyGoto action_75
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_74
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_73
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_72
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_41
action_28 (8) = happyShift action_42
action_28 (48) = happyShift action_50
action_28 (5) = happyGoto action_71
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_2

action_30 (8) = happyShift action_70
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_7

action_32 _ = happyReduce_6

action_33 _ = happyReduce_5

action_34 (7) = happyShift action_41
action_34 (8) = happyShift action_42
action_34 (48) = happyShift action_50
action_34 (5) = happyGoto action_69
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_3

action_36 (16) = happyShift action_67
action_36 (17) = happyShift action_68
action_36 (47) = happyShift action_47
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (40) = happyShift action_66
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_16

action_39 (37) = happyShift action_58
action_39 (38) = happyShift action_59
action_39 (39) = happyShift action_60
action_39 (41) = happyShift action_61
action_39 (42) = happyShift action_62
action_39 (43) = happyShift action_63
action_39 (44) = happyShift action_64
action_39 (45) = happyShift action_65
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_55
action_40 (34) = happyShift action_56
action_40 (35) = happyShift action_57
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_28

action_42 _ = happyReduce_29

action_43 _ = happyReduce_39

action_44 _ = happyReduce_40

action_45 (7) = happyShift action_41
action_45 (8) = happyShift action_42
action_45 (9) = happyShift action_43
action_45 (10) = happyShift action_44
action_45 (36) = happyShift action_45
action_45 (48) = happyShift action_46
action_45 (5) = happyGoto action_39
action_45 (6) = happyGoto action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_41
action_46 (8) = happyShift action_42
action_46 (9) = happyShift action_43
action_46 (10) = happyShift action_44
action_46 (36) = happyShift action_45
action_46 (48) = happyShift action_46
action_46 (5) = happyGoto action_52
action_46 (6) = happyGoto action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (11) = happyShift action_4
action_47 (14) = happyShift action_5
action_47 (15) = happyShift action_6
action_47 (18) = happyShift action_7
action_47 (19) = happyShift action_8
action_47 (20) = happyShift action_9
action_47 (21) = happyShift action_10
action_47 (22) = happyShift action_11
action_47 (23) = happyShift action_12
action_47 (24) = happyShift action_13
action_47 (25) = happyShift action_14
action_47 (26) = happyShift action_15
action_47 (27) = happyShift action_16
action_47 (28) = happyShift action_17
action_47 (29) = happyShift action_18
action_47 (30) = happyShift action_19
action_47 (31) = happyShift action_2
action_47 (32) = happyShift action_20
action_47 (33) = happyShift action_21
action_47 (4) = happyGoto action_51
action_47 _ = happyReduce_22

action_48 (7) = happyShift action_41
action_48 (8) = happyShift action_42
action_48 (48) = happyShift action_50
action_48 (5) = happyGoto action_49
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (41) = happyShift action_61
action_49 (42) = happyShift action_62
action_49 (43) = happyShift action_63
action_49 (44) = happyShift action_64
action_49 (45) = happyShift action_65
action_49 _ = happyReduce_1

action_50 (7) = happyShift action_41
action_50 (8) = happyShift action_42
action_50 (48) = happyShift action_50
action_50 (5) = happyGoto action_98
action_50 _ = happyFail (happyExpListPerState 50)

action_51 _ = happyReduce_21

action_52 (37) = happyShift action_58
action_52 (38) = happyShift action_59
action_52 (39) = happyShift action_60
action_52 (41) = happyShift action_61
action_52 (42) = happyShift action_62
action_52 (43) = happyShift action_63
action_52 (44) = happyShift action_64
action_52 (45) = happyShift action_65
action_52 (49) = happyShift action_97
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (34) = happyShift action_56
action_53 (35) = happyShift action_57
action_53 (49) = happyShift action_96
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (34) = happyShift action_56
action_54 (35) = happyShift action_57
action_54 _ = happyReduce_33

action_55 (11) = happyShift action_4
action_55 (14) = happyShift action_5
action_55 (15) = happyShift action_6
action_55 (18) = happyShift action_7
action_55 (19) = happyShift action_8
action_55 (20) = happyShift action_9
action_55 (21) = happyShift action_10
action_55 (22) = happyShift action_11
action_55 (23) = happyShift action_12
action_55 (24) = happyShift action_13
action_55 (25) = happyShift action_14
action_55 (26) = happyShift action_15
action_55 (27) = happyShift action_16
action_55 (28) = happyShift action_17
action_55 (29) = happyShift action_18
action_55 (30) = happyShift action_19
action_55 (31) = happyShift action_2
action_55 (32) = happyShift action_20
action_55 (33) = happyShift action_21
action_55 (4) = happyGoto action_95
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_41
action_56 (8) = happyShift action_42
action_56 (9) = happyShift action_43
action_56 (10) = happyShift action_44
action_56 (36) = happyShift action_45
action_56 (48) = happyShift action_46
action_56 (5) = happyGoto action_39
action_56 (6) = happyGoto action_94
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_41
action_57 (8) = happyShift action_42
action_57 (9) = happyShift action_43
action_57 (10) = happyShift action_44
action_57 (36) = happyShift action_45
action_57 (48) = happyShift action_46
action_57 (5) = happyGoto action_39
action_57 (6) = happyGoto action_93
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_41
action_58 (8) = happyShift action_42
action_58 (40) = happyShift action_92
action_58 (48) = happyShift action_50
action_58 (5) = happyGoto action_91
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_41
action_59 (8) = happyShift action_42
action_59 (40) = happyShift action_90
action_59 (48) = happyShift action_50
action_59 (5) = happyGoto action_89
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (7) = happyShift action_41
action_60 (8) = happyShift action_42
action_60 (48) = happyShift action_50
action_60 (5) = happyGoto action_88
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (7) = happyShift action_41
action_61 (8) = happyShift action_42
action_61 (48) = happyShift action_50
action_61 (5) = happyGoto action_87
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_41
action_62 (8) = happyShift action_42
action_62 (48) = happyShift action_50
action_62 (5) = happyGoto action_86
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_41
action_63 (8) = happyShift action_42
action_63 (48) = happyShift action_50
action_63 (5) = happyGoto action_85
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_41
action_64 (8) = happyShift action_42
action_64 (48) = happyShift action_50
action_64 (5) = happyGoto action_84
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_41
action_65 (8) = happyShift action_42
action_65 (48) = happyShift action_50
action_65 (5) = happyGoto action_83
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (7) = happyShift action_41
action_66 (8) = happyShift action_42
action_66 (48) = happyShift action_50
action_66 (5) = happyGoto action_82
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (48) = happyShift action_81
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (48) = happyShift action_80
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (41) = happyShift action_61
action_69 (42) = happyShift action_62
action_69 (43) = happyShift action_63
action_69 (44) = happyShift action_64
action_69 (45) = happyShift action_65
action_69 _ = happyReduce_4

action_70 _ = happyReduce_8

action_71 (41) = happyShift action_61
action_71 (42) = happyShift action_62
action_71 (43) = happyShift action_63
action_71 (44) = happyShift action_64
action_71 (45) = happyShift action_65
action_71 _ = happyReduce_9

action_72 (8) = happyShift action_79
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_12

action_74 _ = happyReduce_13

action_75 (7) = happyShift action_41
action_75 (8) = happyShift action_42
action_75 (41) = happyShift action_61
action_75 (42) = happyShift action_62
action_75 (43) = happyShift action_63
action_75 (44) = happyShift action_64
action_75 (45) = happyShift action_65
action_75 (48) = happyShift action_50
action_75 (5) = happyGoto action_78
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (7) = happyShift action_41
action_76 (8) = happyShift action_42
action_76 (48) = happyShift action_50
action_76 (5) = happyGoto action_77
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (41) = happyShift action_61
action_77 (42) = happyShift action_62
action_77 (43) = happyShift action_63
action_77 (44) = happyShift action_64
action_77 (45) = happyShift action_65
action_77 (46) = happyShift action_104
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (41) = happyShift action_61
action_78 (42) = happyShift action_62
action_78 (43) = happyShift action_63
action_78 (44) = happyShift action_64
action_78 (45) = happyShift action_65
action_78 _ = happyReduce_10

action_79 _ = happyReduce_14

action_80 (8) = happyShift action_103
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (7) = happyShift action_41
action_81 (8) = happyShift action_42
action_81 (9) = happyShift action_43
action_81 (10) = happyShift action_44
action_81 (36) = happyShift action_45
action_81 (48) = happyShift action_46
action_81 (5) = happyGoto action_39
action_81 (6) = happyGoto action_102
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (41) = happyShift action_61
action_82 (42) = happyShift action_62
action_82 (43) = happyShift action_63
action_82 (44) = happyShift action_64
action_82 (45) = happyShift action_65
action_82 _ = happyReduce_17

action_83 _ = happyReduce_23

action_84 _ = happyReduce_25

action_85 _ = happyReduce_24

action_86 (43) = happyShift action_63
action_86 (44) = happyShift action_64
action_86 (45) = happyShift action_65
action_86 _ = happyReduce_27

action_87 (43) = happyShift action_63
action_87 (44) = happyShift action_64
action_87 (45) = happyShift action_65
action_87 _ = happyReduce_26

action_88 (41) = happyShift action_61
action_88 (42) = happyShift action_62
action_88 (43) = happyShift action_63
action_88 (44) = happyShift action_64
action_88 (45) = happyShift action_65
action_88 _ = happyReduce_38

action_89 (41) = happyShift action_61
action_89 (42) = happyShift action_62
action_89 (43) = happyShift action_63
action_89 (44) = happyShift action_64
action_89 (45) = happyShift action_65
action_89 _ = happyReduce_36

action_90 (7) = happyShift action_41
action_90 (8) = happyShift action_42
action_90 (48) = happyShift action_50
action_90 (5) = happyGoto action_101
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (41) = happyShift action_61
action_91 (42) = happyShift action_62
action_91 (43) = happyShift action_63
action_91 (44) = happyShift action_64
action_91 (45) = happyShift action_65
action_91 _ = happyReduce_34

action_92 (7) = happyShift action_41
action_92 (8) = happyShift action_42
action_92 (48) = happyShift action_50
action_92 (5) = happyGoto action_100
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_32

action_94 _ = happyReduce_31

action_95 (13) = happyShift action_99
action_95 (47) = happyShift action_47
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_41

action_97 _ = happyReduce_30

action_98 (41) = happyShift action_61
action_98 (42) = happyShift action_62
action_98 (43) = happyShift action_63
action_98 (44) = happyShift action_64
action_98 (45) = happyShift action_65
action_98 (49) = happyShift action_97
action_98 _ = happyFail (happyExpListPerState 98)

action_99 (11) = happyShift action_4
action_99 (14) = happyShift action_5
action_99 (15) = happyShift action_6
action_99 (18) = happyShift action_7
action_99 (19) = happyShift action_8
action_99 (20) = happyShift action_9
action_99 (21) = happyShift action_10
action_99 (22) = happyShift action_11
action_99 (23) = happyShift action_12
action_99 (24) = happyShift action_13
action_99 (25) = happyShift action_14
action_99 (26) = happyShift action_15
action_99 (27) = happyShift action_16
action_99 (28) = happyShift action_17
action_99 (29) = happyShift action_18
action_99 (30) = happyShift action_19
action_99 (31) = happyShift action_2
action_99 (32) = happyShift action_20
action_99 (33) = happyShift action_21
action_99 (4) = happyGoto action_108
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (41) = happyShift action_61
action_100 (42) = happyShift action_62
action_100 (43) = happyShift action_63
action_100 (44) = happyShift action_64
action_100 (45) = happyShift action_65
action_100 _ = happyReduce_35

action_101 (41) = happyShift action_61
action_101 (42) = happyShift action_62
action_101 (43) = happyShift action_63
action_101 (44) = happyShift action_64
action_101 (45) = happyShift action_65
action_101 _ = happyReduce_37

action_102 (34) = happyShift action_56
action_102 (35) = happyShift action_57
action_102 (49) = happyShift action_107
action_102 _ = happyFail (happyExpListPerState 102)

action_103 (47) = happyShift action_106
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (7) = happyShift action_41
action_104 (8) = happyShift action_42
action_104 (48) = happyShift action_50
action_104 (5) = happyGoto action_105
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (41) = happyShift action_61
action_105 (42) = happyShift action_62
action_105 (43) = happyShift action_63
action_105 (44) = happyShift action_64
action_105 (45) = happyShift action_65
action_105 (49) = happyShift action_110
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (7) = happyShift action_41
action_106 (8) = happyShift action_42
action_106 (9) = happyShift action_43
action_106 (10) = happyShift action_44
action_106 (36) = happyShift action_45
action_106 (48) = happyShift action_46
action_106 (5) = happyGoto action_39
action_106 (6) = happyGoto action_109
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_19

action_108 (47) = happyShift action_47
action_108 _ = happyReduce_18

action_109 (34) = happyShift action_56
action_109 (35) = happyShift action_57
action_109 (47) = happyShift action_112
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (7) = happyShift action_41
action_110 (8) = happyShift action_42
action_110 (48) = happyShift action_50
action_110 (5) = happyGoto action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 (41) = happyShift action_61
action_111 (42) = happyShift action_62
action_111 (43) = happyShift action_63
action_111 (44) = happyShift action_64
action_111 (45) = happyShift action_65
action_111 _ = happyReduce_15

action_112 (11) = happyShift action_4
action_112 (14) = happyShift action_5
action_112 (15) = happyShift action_6
action_112 (18) = happyShift action_7
action_112 (19) = happyShift action_8
action_112 (20) = happyShift action_9
action_112 (21) = happyShift action_10
action_112 (22) = happyShift action_11
action_112 (23) = happyShift action_12
action_112 (24) = happyShift action_13
action_112 (25) = happyShift action_14
action_112 (26) = happyShift action_15
action_112 (27) = happyShift action_16
action_112 (28) = happyShift action_17
action_112 (29) = happyShift action_18
action_112 (30) = happyShift action_19
action_112 (31) = happyShift action_2
action_112 (32) = happyShift action_20
action_112 (33) = happyShift action_21
action_112 (4) = happyGoto action_113
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (47) = happyShift action_47
action_113 (49) = happyShift action_114
action_113 _ = happyFail (happyExpListPerState 113)

action_114 _ = happyReduce_20

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
happyReduction_8 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Clone happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Scale happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Print happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (OutFile happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TileAnd happy_var_2 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TileOr happy_var_2 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 4 4 happyReduction_14
happyReduction_14 ((HappyTerminal (TokenVar _ happy_var_4)) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (TileComb happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 8 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn5  happy_var_8) `HappyStk`
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

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (NewTile happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Assign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 6 4 happyReduction_18
happyReduction_18 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn6  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 10 4 happyReduction_20
happyReduction_20 (_ `HappyStk`
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

happyReduce_21 = happySpecReduce_3  4 happyReduction_21
happyReduction_21 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSeq happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSemi happy_var_1
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  5 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  5 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  5 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  5 happyReduction_28
happyReduction_28 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (TileInt happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Get happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  5 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  6 happyReduction_31
happyReduction_31 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_2  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negation happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  6 happyReduction_34
happyReduction_34 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 6 happyReduction_35
happyReduction_35 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsLessEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_3  6 happyReduction_36
happyReduction_36 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsGreater happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 4 6 happyReduction_37
happyReduction_37 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsGreaterEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_3  6 happyReduction_38
happyReduction_38 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  6 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn6
		 (TileTrue
	)

happyReduce_40 = happySpecReduce_1  6 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn6
		 (TileFalse
	)

happyReduce_41 = happySpecReduce_3  6 happyReduction_41
happyReduction_41 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 50 50 notHappyAtAll (HappyState action) sts stk []

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
	TokenClone _ -> cont 24;
	TokenLoad _ -> cont 25;
	TokenScale _ -> cont 26;
	TokenTileComb _ -> cont 27;
	TokenTileAnd _ -> cont 28;
	TokenTileOr _ -> cont 29;
	TokenPrint _ -> cont 30;
	TokenCreateCanvas _ -> cont 31;
	TokenOutFile _ -> cont 32;
	TokenSubtitle _ -> cont 33;
	TokenAnd _ -> cont 34;
	TokenOr _ -> cont 35;
	TokenNegation _ -> cont 36;
	TokenLess _ -> cont 37;
	TokenGreater _ -> cont 38;
	TokenEq _ -> cont 39;
	TokenAssign _ -> cont 40;
	TokenPlus _ -> cont 41;
	TokenMinus _ -> cont 42;
	TokenTimes _ -> cont 43;
	TokenDiv _ -> cont 44;
	TokenExp _ -> cont 45;
	TokenComma _ -> cont 46;
	TokenStatSep _ -> cont 47;
	TokenLeftParen _ -> cont 48;
	TokenRightParen _ -> cont 49;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 50 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
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
type Env = [(String, [String])]

data Exp
    = Assign VarName ExpCalc  |
    Blank TileName  |
    CreateCanvas TileName ExpCalc |
    Clone  TileName TileName  |
    For Exp VarName ExpBool Exp |
    IfElse ExpBool Exp Exp  |
    Load String  |
    NewTile TileName Exp  |
    OutFile TileName  |
    Print TileName ExpCalc ExpCalc  | 
    Reverse TileName String |
    Rotate TileName ExpCalc |
    ReflectX TileName  |
    ReflectY TileName  |      
    Scale TileName ExpCalc  |    
    Subtitle TileName ExpCalc ExpCalc ExpCalc  |  
    TileComb TileName TileName String |
    TileAnd TileName TileName |
    TileOr TileName TileName |
    While Exp ExpBool  | 
    StatSeq Exp Exp  |
    StatSemi Exp |
    Cl VarName Env
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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
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
     = case happyDrop (k - ((1) :: Int)) sts of
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





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
