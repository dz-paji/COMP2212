{-# OPTIONS_GHC -w #-}
module TileGrammar where 
import TileTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,240) ([25600,64510,3,0,0,4,8192,0,0,0,0,0,256,60,64,4097,64,0,0,512,0,0,32768,32716,127,32768,0,0,0,4,0,0,32,0,0,256,0,0,2048,0,0,16384,0,0,0,2,0,0,16,0,0,128,0,0,1024,0,0,8192,0,0,0,1,0,0,8,0,0,64,0,0,0,0,0,4,0,0,32768,0,0,0,4,0,0,32,0,0,256,0,0,3072,16384,0,16,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,12288,0,1,64,0,0,0,6144,0,2048,0,0,128,0,0,0,0,0,56320,7,8,3072,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,15,16400,1024,120,128,8194,25600,64510,3,1536,8192,0,8,0,32768,32783,1,8,512,0,0,0,0,0,8048,1,0,48,8,0,384,0,0,0,0,62240,8159,0,240,256,16388,1920,2048,32,3074,16384,4096,24592,0,32770,128,3,16,1024,24,128,8192,192,1024,0,1537,8192,0,12296,0,1,32832,1,8,512,12,64,4096,0,0,32768,0,0,0,4,0,49152,7,0,0,0,0,0,496,32,0,0,0,0,0,0,0,0,0,0,0,128,3,16,1024,0,0,4032,192,1024,0,1,0,0,8192,0,0,32768,7,8200,512,0,0,992,0,0,0,0,0,0,0,0,0,0,0,0,56,0,0,448,0,0,3968,0,0,31744,3072,16384,0,16,0,0,31,3,16,1024,0,0,0,0,0,0,32768,0,0,4,0,0,0,0,0,0,0,0,9184,12800,65023,1,0,0,63488,0,0,49152,7,0,3072,512,0,0,1024,0,0,8064,384,2048,0,2,0,57344,24611,0,2,128,15,16400,1024,0,0,0,0,0,32768,0,0,96,4,0,32768,32911,1,8,512,0,0,992,0,0,0,36864,61433,15,0,0,0,80,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","ExpCalc","ExpBool","int","var","true","false","if","then","else","new","let","while","for","do","REVERSE","ROTATE","REFLECTX","REFLECTY","BLANK","CLONE","LOAD","SCALE","SIZE","TILECOMB","TILEAND","TILEOR","PRINT","CREATECANVAS","OUTFILE","SUBTITLE","'&&'","'||'","'!!'","'<'","'>'","'=='","'='","'+'","'-'","'*'","'/'","'^'","','","';'","'('","')'","%eof"]
        bit_start = st * 51
        bit_end = (st + 1) * 51
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..50]
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
action_0 (28) = happyShift action_16
action_0 (29) = happyShift action_17
action_0 (30) = happyShift action_18
action_0 (31) = happyShift action_19
action_0 (32) = happyShift action_2
action_0 (33) = happyShift action_20
action_0 (34) = happyShift action_21
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (32) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_49
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (48) = happyShift action_48
action_3 (51) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_41
action_4 (8) = happyShift action_42
action_4 (9) = happyShift action_43
action_4 (10) = happyShift action_44
action_4 (27) = happyShift action_45
action_4 (37) = happyShift action_46
action_4 (49) = happyShift action_47
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
action_7 (28) = happyShift action_16
action_7 (29) = happyShift action_17
action_7 (30) = happyShift action_18
action_7 (31) = happyShift action_19
action_7 (32) = happyShift action_2
action_7 (33) = happyShift action_20
action_7 (34) = happyShift action_21
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

action_22 (49) = happyShift action_78
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_11

action_24 (8) = happyShift action_77
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_76
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_75
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_74
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_41
action_28 (8) = happyShift action_42
action_28 (27) = happyShift action_45
action_28 (49) = happyShift action_51
action_28 (5) = happyGoto action_73
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_2

action_30 (8) = happyShift action_72
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_7

action_32 _ = happyReduce_6

action_33 _ = happyReduce_5

action_34 (7) = happyShift action_41
action_34 (8) = happyShift action_42
action_34 (27) = happyShift action_45
action_34 (49) = happyShift action_51
action_34 (5) = happyGoto action_71
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_3

action_36 (16) = happyShift action_69
action_36 (17) = happyShift action_70
action_36 (48) = happyShift action_48
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (41) = happyShift action_68
action_37 _ = happyFail (happyExpListPerState 37)

action_38 _ = happyReduce_16

action_39 (38) = happyShift action_60
action_39 (39) = happyShift action_61
action_39 (40) = happyShift action_62
action_39 (42) = happyShift action_63
action_39 (43) = happyShift action_64
action_39 (44) = happyShift action_65
action_39 (45) = happyShift action_66
action_39 (46) = happyShift action_67
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (12) = happyShift action_57
action_40 (35) = happyShift action_58
action_40 (36) = happyShift action_59
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_29

action_42 _ = happyReduce_30

action_43 _ = happyReduce_40

action_44 _ = happyReduce_41

action_45 (8) = happyShift action_56
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_41
action_46 (8) = happyShift action_42
action_46 (9) = happyShift action_43
action_46 (10) = happyShift action_44
action_46 (27) = happyShift action_45
action_46 (37) = happyShift action_46
action_46 (49) = happyShift action_47
action_46 (5) = happyGoto action_39
action_46 (6) = happyGoto action_55
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_41
action_47 (8) = happyShift action_42
action_47 (9) = happyShift action_43
action_47 (10) = happyShift action_44
action_47 (27) = happyShift action_45
action_47 (37) = happyShift action_46
action_47 (49) = happyShift action_47
action_47 (5) = happyGoto action_53
action_47 (6) = happyGoto action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_4
action_48 (14) = happyShift action_5
action_48 (15) = happyShift action_6
action_48 (18) = happyShift action_7
action_48 (19) = happyShift action_8
action_48 (20) = happyShift action_9
action_48 (21) = happyShift action_10
action_48 (22) = happyShift action_11
action_48 (23) = happyShift action_12
action_48 (24) = happyShift action_13
action_48 (25) = happyShift action_14
action_48 (26) = happyShift action_15
action_48 (28) = happyShift action_16
action_48 (29) = happyShift action_17
action_48 (30) = happyShift action_18
action_48 (31) = happyShift action_19
action_48 (32) = happyShift action_2
action_48 (33) = happyShift action_20
action_48 (34) = happyShift action_21
action_48 (4) = happyGoto action_52
action_48 _ = happyReduce_22

action_49 (7) = happyShift action_41
action_49 (8) = happyShift action_42
action_49 (27) = happyShift action_45
action_49 (49) = happyShift action_51
action_49 (5) = happyGoto action_50
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (42) = happyShift action_63
action_50 (43) = happyShift action_64
action_50 (44) = happyShift action_65
action_50 (45) = happyShift action_66
action_50 (46) = happyShift action_67
action_50 _ = happyReduce_1

action_51 (7) = happyShift action_41
action_51 (8) = happyShift action_42
action_51 (27) = happyShift action_45
action_51 (49) = happyShift action_51
action_51 (5) = happyGoto action_100
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_21

action_53 (38) = happyShift action_60
action_53 (39) = happyShift action_61
action_53 (40) = happyShift action_62
action_53 (42) = happyShift action_63
action_53 (43) = happyShift action_64
action_53 (44) = happyShift action_65
action_53 (45) = happyShift action_66
action_53 (46) = happyShift action_67
action_53 (50) = happyShift action_99
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (35) = happyShift action_58
action_54 (36) = happyShift action_59
action_54 (50) = happyShift action_98
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (35) = happyShift action_58
action_55 (36) = happyShift action_59
action_55 _ = happyReduce_34

action_56 _ = happyReduce_28

action_57 (11) = happyShift action_4
action_57 (14) = happyShift action_5
action_57 (15) = happyShift action_6
action_57 (18) = happyShift action_7
action_57 (19) = happyShift action_8
action_57 (20) = happyShift action_9
action_57 (21) = happyShift action_10
action_57 (22) = happyShift action_11
action_57 (23) = happyShift action_12
action_57 (24) = happyShift action_13
action_57 (25) = happyShift action_14
action_57 (26) = happyShift action_15
action_57 (28) = happyShift action_16
action_57 (29) = happyShift action_17
action_57 (30) = happyShift action_18
action_57 (31) = happyShift action_19
action_57 (32) = happyShift action_2
action_57 (33) = happyShift action_20
action_57 (34) = happyShift action_21
action_57 (4) = happyGoto action_97
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (7) = happyShift action_41
action_58 (8) = happyShift action_42
action_58 (9) = happyShift action_43
action_58 (10) = happyShift action_44
action_58 (27) = happyShift action_45
action_58 (37) = happyShift action_46
action_58 (49) = happyShift action_47
action_58 (5) = happyGoto action_39
action_58 (6) = happyGoto action_96
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_41
action_59 (8) = happyShift action_42
action_59 (9) = happyShift action_43
action_59 (10) = happyShift action_44
action_59 (27) = happyShift action_45
action_59 (37) = happyShift action_46
action_59 (49) = happyShift action_47
action_59 (5) = happyGoto action_39
action_59 (6) = happyGoto action_95
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (7) = happyShift action_41
action_60 (8) = happyShift action_42
action_60 (27) = happyShift action_45
action_60 (41) = happyShift action_94
action_60 (49) = happyShift action_51
action_60 (5) = happyGoto action_93
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (7) = happyShift action_41
action_61 (8) = happyShift action_42
action_61 (27) = happyShift action_45
action_61 (41) = happyShift action_92
action_61 (49) = happyShift action_51
action_61 (5) = happyGoto action_91
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (7) = happyShift action_41
action_62 (8) = happyShift action_42
action_62 (27) = happyShift action_45
action_62 (49) = happyShift action_51
action_62 (5) = happyGoto action_90
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_41
action_63 (8) = happyShift action_42
action_63 (27) = happyShift action_45
action_63 (49) = happyShift action_51
action_63 (5) = happyGoto action_89
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (7) = happyShift action_41
action_64 (8) = happyShift action_42
action_64 (27) = happyShift action_45
action_64 (49) = happyShift action_51
action_64 (5) = happyGoto action_88
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (7) = happyShift action_41
action_65 (8) = happyShift action_42
action_65 (27) = happyShift action_45
action_65 (49) = happyShift action_51
action_65 (5) = happyGoto action_87
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (7) = happyShift action_41
action_66 (8) = happyShift action_42
action_66 (27) = happyShift action_45
action_66 (49) = happyShift action_51
action_66 (5) = happyGoto action_86
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (7) = happyShift action_41
action_67 (8) = happyShift action_42
action_67 (27) = happyShift action_45
action_67 (49) = happyShift action_51
action_67 (5) = happyGoto action_85
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (7) = happyShift action_41
action_68 (8) = happyShift action_42
action_68 (27) = happyShift action_45
action_68 (49) = happyShift action_51
action_68 (5) = happyGoto action_84
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (49) = happyShift action_83
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (49) = happyShift action_82
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (42) = happyShift action_63
action_71 (43) = happyShift action_64
action_71 (44) = happyShift action_65
action_71 (45) = happyShift action_66
action_71 (46) = happyShift action_67
action_71 _ = happyReduce_4

action_72 _ = happyReduce_8

action_73 (42) = happyShift action_63
action_73 (43) = happyShift action_64
action_73 (44) = happyShift action_65
action_73 (45) = happyShift action_66
action_73 (46) = happyShift action_67
action_73 _ = happyReduce_9

action_74 (8) = happyShift action_81
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_12

action_76 _ = happyReduce_13

action_77 (49) = happyShift action_80
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (7) = happyShift action_41
action_78 (8) = happyShift action_42
action_78 (27) = happyShift action_45
action_78 (49) = happyShift action_51
action_78 (5) = happyGoto action_79
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (42) = happyShift action_63
action_79 (43) = happyShift action_64
action_79 (44) = happyShift action_65
action_79 (45) = happyShift action_66
action_79 (46) = happyShift action_67
action_79 (47) = happyShift action_107
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (7) = happyShift action_41
action_80 (8) = happyShift action_42
action_80 (27) = happyShift action_45
action_80 (49) = happyShift action_51
action_80 (5) = happyGoto action_106
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_14

action_82 (8) = happyShift action_105
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (7) = happyShift action_41
action_83 (8) = happyShift action_42
action_83 (9) = happyShift action_43
action_83 (10) = happyShift action_44
action_83 (27) = happyShift action_45
action_83 (37) = happyShift action_46
action_83 (49) = happyShift action_47
action_83 (5) = happyGoto action_39
action_83 (6) = happyGoto action_104
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (42) = happyShift action_63
action_84 (43) = happyShift action_64
action_84 (44) = happyShift action_65
action_84 (45) = happyShift action_66
action_84 (46) = happyShift action_67
action_84 _ = happyReduce_17

action_85 _ = happyReduce_23

action_86 _ = happyReduce_25

action_87 _ = happyReduce_24

action_88 (44) = happyShift action_65
action_88 (45) = happyShift action_66
action_88 (46) = happyShift action_67
action_88 _ = happyReduce_27

action_89 (44) = happyShift action_65
action_89 (45) = happyShift action_66
action_89 (46) = happyShift action_67
action_89 _ = happyReduce_26

action_90 (42) = happyShift action_63
action_90 (43) = happyShift action_64
action_90 (44) = happyShift action_65
action_90 (45) = happyShift action_66
action_90 (46) = happyShift action_67
action_90 _ = happyReduce_39

action_91 (42) = happyShift action_63
action_91 (43) = happyShift action_64
action_91 (44) = happyShift action_65
action_91 (45) = happyShift action_66
action_91 (46) = happyShift action_67
action_91 _ = happyReduce_37

action_92 (7) = happyShift action_41
action_92 (8) = happyShift action_42
action_92 (27) = happyShift action_45
action_92 (49) = happyShift action_51
action_92 (5) = happyGoto action_103
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (42) = happyShift action_63
action_93 (43) = happyShift action_64
action_93 (44) = happyShift action_65
action_93 (45) = happyShift action_66
action_93 (46) = happyShift action_67
action_93 _ = happyReduce_35

action_94 (7) = happyShift action_41
action_94 (8) = happyShift action_42
action_94 (27) = happyShift action_45
action_94 (49) = happyShift action_51
action_94 (5) = happyGoto action_102
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_33

action_96 _ = happyReduce_32

action_97 (13) = happyShift action_101
action_97 (48) = happyShift action_48
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_42

action_99 _ = happyReduce_31

action_100 (42) = happyShift action_63
action_100 (43) = happyShift action_64
action_100 (44) = happyShift action_65
action_100 (45) = happyShift action_66
action_100 (46) = happyShift action_67
action_100 (50) = happyShift action_99
action_100 _ = happyFail (happyExpListPerState 100)

action_101 (11) = happyShift action_4
action_101 (14) = happyShift action_5
action_101 (15) = happyShift action_6
action_101 (18) = happyShift action_7
action_101 (19) = happyShift action_8
action_101 (20) = happyShift action_9
action_101 (21) = happyShift action_10
action_101 (22) = happyShift action_11
action_101 (23) = happyShift action_12
action_101 (24) = happyShift action_13
action_101 (25) = happyShift action_14
action_101 (26) = happyShift action_15
action_101 (28) = happyShift action_16
action_101 (29) = happyShift action_17
action_101 (30) = happyShift action_18
action_101 (31) = happyShift action_19
action_101 (32) = happyShift action_2
action_101 (33) = happyShift action_20
action_101 (34) = happyShift action_21
action_101 (4) = happyGoto action_112
action_101 _ = happyFail (happyExpListPerState 101)

action_102 (42) = happyShift action_63
action_102 (43) = happyShift action_64
action_102 (44) = happyShift action_65
action_102 (45) = happyShift action_66
action_102 (46) = happyShift action_67
action_102 _ = happyReduce_36

action_103 (42) = happyShift action_63
action_103 (43) = happyShift action_64
action_103 (44) = happyShift action_65
action_103 (45) = happyShift action_66
action_103 (46) = happyShift action_67
action_103 _ = happyReduce_38

action_104 (35) = happyShift action_58
action_104 (36) = happyShift action_59
action_104 (50) = happyShift action_111
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (48) = happyShift action_110
action_105 _ = happyFail (happyExpListPerState 105)

action_106 (42) = happyShift action_63
action_106 (43) = happyShift action_64
action_106 (44) = happyShift action_65
action_106 (45) = happyShift action_66
action_106 (46) = happyShift action_67
action_106 (47) = happyShift action_109
action_106 _ = happyFail (happyExpListPerState 106)

action_107 (7) = happyShift action_41
action_107 (8) = happyShift action_42
action_107 (27) = happyShift action_45
action_107 (49) = happyShift action_51
action_107 (5) = happyGoto action_108
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (42) = happyShift action_63
action_108 (43) = happyShift action_64
action_108 (44) = happyShift action_65
action_108 (45) = happyShift action_66
action_108 (46) = happyShift action_67
action_108 (50) = happyShift action_115
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (7) = happyShift action_41
action_109 (8) = happyShift action_42
action_109 (27) = happyShift action_45
action_109 (49) = happyShift action_51
action_109 (5) = happyGoto action_114
action_109 _ = happyFail (happyExpListPerState 109)

action_110 (7) = happyShift action_41
action_110 (8) = happyShift action_42
action_110 (9) = happyShift action_43
action_110 (10) = happyShift action_44
action_110 (27) = happyShift action_45
action_110 (37) = happyShift action_46
action_110 (49) = happyShift action_47
action_110 (5) = happyGoto action_39
action_110 (6) = happyGoto action_113
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_19

action_112 (48) = happyShift action_48
action_112 _ = happyReduce_18

action_113 (35) = happyShift action_58
action_113 (36) = happyShift action_59
action_113 (48) = happyShift action_118
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (42) = happyShift action_63
action_114 (43) = happyShift action_64
action_114 (44) = happyShift action_65
action_114 (45) = happyShift action_66
action_114 (46) = happyShift action_67
action_114 (50) = happyShift action_117
action_114 _ = happyFail (happyExpListPerState 114)

action_115 (7) = happyShift action_41
action_115 (8) = happyShift action_42
action_115 (27) = happyShift action_45
action_115 (49) = happyShift action_51
action_115 (5) = happyGoto action_116
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (42) = happyShift action_63
action_116 (43) = happyShift action_64
action_116 (44) = happyShift action_65
action_116 (45) = happyShift action_66
action_116 (46) = happyShift action_67
action_116 _ = happyReduce_15

action_117 _ = happyReduce_10

action_118 (11) = happyShift action_4
action_118 (14) = happyShift action_5
action_118 (15) = happyShift action_6
action_118 (18) = happyShift action_7
action_118 (19) = happyShift action_8
action_118 (20) = happyShift action_9
action_118 (21) = happyShift action_10
action_118 (22) = happyShift action_11
action_118 (23) = happyShift action_12
action_118 (24) = happyShift action_13
action_118 (25) = happyShift action_14
action_118 (26) = happyShift action_15
action_118 (28) = happyShift action_16
action_118 (29) = happyShift action_17
action_118 (30) = happyShift action_18
action_118 (31) = happyShift action_19
action_118 (32) = happyShift action_2
action_118 (33) = happyShift action_20
action_118 (34) = happyShift action_21
action_118 (4) = happyGoto action_119
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (48) = happyShift action_48
action_119 (50) = happyShift action_120
action_119 _ = happyFail (happyExpListPerState 119)

action_120 _ = happyReduce_20

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

happyReduce_10 = happyReduce 8 4 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_3)) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Print happy_var_2 happy_var_3 happy_var_5 happy_var_7
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

happyReduce_28 = happySpecReduce_2  5 happyReduction_28
happyReduction_28 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn5
		 (GetSize happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  5 happyReduction_29
happyReduction_29 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (TileInt happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  5 happyReduction_30
happyReduction_30 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Get happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  5 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  6 happyReduction_33
happyReduction_33 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  6 happyReduction_34
happyReduction_34 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negation happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happyReduce 4 6 happyReduction_36
happyReduction_36 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsLessEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_37 = happySpecReduce_3  6 happyReduction_37
happyReduction_37 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsGreater happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happyReduce 4 6 happyReduction_38
happyReduction_38 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsGreaterEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_39 = happySpecReduce_3  6 happyReduction_39
happyReduction_39 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  6 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn6
		 (TileTrue
	)

happyReduce_41 = happySpecReduce_1  6 happyReduction_41
happyReduction_41 _
	 =  HappyAbsSyn6
		 (TileFalse
	)

happyReduce_42 = happySpecReduce_3  6 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

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
	TokenSize _ -> cont 27;
	TokenTileComb _ -> cont 28;
	TokenTileAnd _ -> cont 29;
	TokenTileOr _ -> cont 30;
	TokenPrint _ -> cont 31;
	TokenCreateCanvas _ -> cont 32;
	TokenOutFile _ -> cont 33;
	TokenSubtitle _ -> cont 34;
	TokenAnd _ -> cont 35;
	TokenOr _ -> cont 36;
	TokenNegation _ -> cont 37;
	TokenLess _ -> cont 38;
	TokenGreater _ -> cont 39;
	TokenEq _ -> cont 40;
	TokenAssign _ -> cont 41;
	TokenPlus _ -> cont 42;
	TokenMinus _ -> cont 43;
	TokenTimes _ -> cont 44;
	TokenDiv _ -> cont 45;
	TokenExp _ -> cont 46;
	TokenComma _ -> cont 47;
	TokenStatSep _ -> cont 48;
	TokenLeftParen _ -> cont 49;
	TokenRightParen _ -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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
    Load String  |              -- String for filename, also as var name
    NewTile TileName  |
    OutFile TileName  |            -- also the exit point
    Print TileName TileName ExpCalc ExpCalc  |     -- need coordinates, print tile of first tilename to second tilename
    Reverse TileName |
    Rotate TileName ExpCalc |       -- Int for degree to rotate
    ReflectX TileName  |
    ReflectY TileName  |      
    Scale TileName ExpCalc  |    
    Subtitle TileName ExpCalc ExpCalc ExpCalc  |           -- need coordinates params: varname, x, y, size
    TileComb TileName TileName String |   -- String for direction U | D | R | L
    TileAnd TileName TileName |
    TileOr TileName TileName |
    While Exp ExpBool  | 
    StatSeq Exp Exp  |
    StatSemi Exp |
    Cl VarName Env |   -- Closure
    Output VarName Env -- exit point
    deriving (Show,Eq)

data ExpCalc
    = Expo ExpCalc ExpCalc |
    Times ExpCalc ExpCalc |
    Div ExpCalc ExpCalc |
    Minus ExpCalc ExpCalc |
    Plus ExpCalc ExpCalc |
    GetSize TileName |
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










































data Happy_IntList = HappyCons Int Happy_IntList








































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
