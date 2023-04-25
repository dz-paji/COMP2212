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
happyExpList = Happy_Data_Array.listArray (0,192) ([41984,2047,0,0,16,32768,0,0,0,0,4096,960,8192,512,8,0,0,65444,7,2048,0,0,128,0,0,8,0,32768,0,0,2048,0,0,128,0,0,8,0,32768,0,0,2048,0,0,128,0,0,0,0,32,0,0,3072,0,8192,128,0,0,8,0,49152,0,0,2,0,0,0,0,0,12,0,32,0,0,0,4,4096,0,0,2,0,56320,7,8,24,0,0,0,0,0,0,0,0,0,0,0,15360,0,8194,960,8192,512,64064,127,49152,0,0,2,0,1984,192,0,512,0,0,0,0,32192,4,32768,16385,0,6144,0,64064,127,49152,3,32,15362,0,8194,192,0,514,12,8192,49184,0,0,3074,0,8192,192,0,512,12,0,49184,0,0,3074,0,8192,192,0,512,60,512,32,0,31744,0,0,1984,0,0,0,0,0,49152,0,31744,3074,0,8192,0,0,252,0,49152,7,0,24,0,0,1984,0,0,0,0,0,0,0,0,0,0,1792,0,0,112,0,49152,7,0,31744,3072,0,8192,0,0,124,12,0,32,0,0,0,0,0,4096,0,256,0,0,0,0,0,0,0,18368,41984,2047,0,0,49152,7,0,31744,3072,0,8192,0,0,1148,0,0,49168,0,0,2,0,1984,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","ExpCalc","ExpBool","int","var","true","false","if","then","else","let","while","do","REVERSE","ROTATE","BLANK","LOAD","SCALE","TILEAND","TILEOR","PRINT","CREATECANVAS","OUTFILE","SUBTITLE","'&&'","'||'","'!!'","'<'","'>'","'=='","'='","'+'","'-'","'*'","'/'","'^'","','","';'","'('","')'","%eof"]
        bit_start = st Prelude.* 44
        bit_end = (st Prelude.+ 1) Prelude.* 44
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..43]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (11) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (16) = happyShift action_6
action_0 (17) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (21) = happyShift action_11
action_0 (22) = happyShift action_12
action_0 (23) = happyShift action_13
action_0 (24) = happyShift action_14
action_0 (25) = happyShift action_2
action_0 (26) = happyShift action_15
action_0 (27) = happyShift action_16
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (25) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_38
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (41) = happyShift action_37
action_3 (44) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_31
action_4 (8) = happyShift action_32
action_4 (9) = happyShift action_33
action_4 (10) = happyShift action_34
action_4 (30) = happyShift action_35
action_4 (42) = happyShift action_36
action_4 (5) = happyGoto action_29
action_4 (6) = happyGoto action_30
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (8) = happyShift action_28
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (11) = happyShift action_4
action_6 (14) = happyShift action_5
action_6 (16) = happyShift action_6
action_6 (17) = happyShift action_7
action_6 (18) = happyShift action_8
action_6 (19) = happyShift action_9
action_6 (20) = happyShift action_10
action_6 (21) = happyShift action_11
action_6 (22) = happyShift action_12
action_6 (23) = happyShift action_13
action_6 (24) = happyShift action_14
action_6 (25) = happyShift action_2
action_6 (26) = happyShift action_15
action_6 (27) = happyShift action_16
action_6 (4) = happyGoto action_27
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_26
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_25
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_24
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_23
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_22
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_21
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_20
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_19
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (8) = happyShift action_18
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (42) = happyShift action_63
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_8

action_19 (7) = happyShift action_31
action_19 (8) = happyShift action_32
action_19 (42) = happyShift action_40
action_19 (5) = happyGoto action_62
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_61
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_60
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_31
action_22 (8) = happyShift action_32
action_22 (42) = happyShift action_40
action_22 (5) = happyGoto action_59
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_2

action_24 _ = happyReduce_5

action_25 (7) = happyShift action_31
action_25 (8) = happyShift action_32
action_25 (42) = happyShift action_40
action_25 (5) = happyGoto action_58
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_3

action_27 (15) = happyShift action_57
action_27 (41) = happyShift action_37
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (34) = happyShift action_56
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (31) = happyShift action_48
action_29 (32) = happyShift action_49
action_29 (33) = happyShift action_50
action_29 (35) = happyShift action_51
action_29 (36) = happyShift action_52
action_29 (37) = happyShift action_53
action_29 (38) = happyShift action_54
action_29 (39) = happyShift action_55
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_45
action_30 (28) = happyShift action_46
action_30 (29) = happyShift action_47
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_22

action_32 _ = happyReduce_23

action_33 _ = happyReduce_33

action_34 _ = happyReduce_34

action_35 (7) = happyShift action_31
action_35 (8) = happyShift action_32
action_35 (9) = happyShift action_33
action_35 (10) = happyShift action_34
action_35 (30) = happyShift action_35
action_35 (42) = happyShift action_36
action_35 (5) = happyGoto action_29
action_35 (6) = happyGoto action_44
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (7) = happyShift action_31
action_36 (8) = happyShift action_32
action_36 (9) = happyShift action_33
action_36 (10) = happyShift action_34
action_36 (30) = happyShift action_35
action_36 (42) = happyShift action_36
action_36 (5) = happyGoto action_42
action_36 (6) = happyGoto action_43
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (11) = happyShift action_4
action_37 (14) = happyShift action_5
action_37 (16) = happyShift action_6
action_37 (17) = happyShift action_7
action_37 (18) = happyShift action_8
action_37 (19) = happyShift action_9
action_37 (20) = happyShift action_10
action_37 (21) = happyShift action_11
action_37 (22) = happyShift action_12
action_37 (23) = happyShift action_13
action_37 (24) = happyShift action_14
action_37 (25) = happyShift action_2
action_37 (26) = happyShift action_15
action_37 (27) = happyShift action_16
action_37 (4) = happyGoto action_41
action_37 _ = happyReduce_16

action_38 (7) = happyShift action_31
action_38 (8) = happyShift action_32
action_38 (42) = happyShift action_40
action_38 (5) = happyGoto action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (35) = happyShift action_51
action_39 (36) = happyShift action_52
action_39 (37) = happyShift action_53
action_39 (38) = happyShift action_54
action_39 (39) = happyShift action_55
action_39 _ = happyReduce_1

action_40 (7) = happyShift action_31
action_40 (8) = happyShift action_32
action_40 (42) = happyShift action_40
action_40 (5) = happyGoto action_83
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_15

action_42 (31) = happyShift action_48
action_42 (32) = happyShift action_49
action_42 (33) = happyShift action_50
action_42 (35) = happyShift action_51
action_42 (36) = happyShift action_52
action_42 (37) = happyShift action_53
action_42 (38) = happyShift action_54
action_42 (39) = happyShift action_55
action_42 (43) = happyShift action_82
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (28) = happyShift action_46
action_43 (29) = happyShift action_47
action_43 (43) = happyShift action_81
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (28) = happyShift action_46
action_44 (29) = happyShift action_47
action_44 _ = happyReduce_27

action_45 (11) = happyShift action_4
action_45 (14) = happyShift action_5
action_45 (16) = happyShift action_6
action_45 (17) = happyShift action_7
action_45 (18) = happyShift action_8
action_45 (19) = happyShift action_9
action_45 (20) = happyShift action_10
action_45 (21) = happyShift action_11
action_45 (22) = happyShift action_12
action_45 (23) = happyShift action_13
action_45 (24) = happyShift action_14
action_45 (25) = happyShift action_2
action_45 (26) = happyShift action_15
action_45 (27) = happyShift action_16
action_45 (4) = happyGoto action_80
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_31
action_46 (8) = happyShift action_32
action_46 (9) = happyShift action_33
action_46 (10) = happyShift action_34
action_46 (30) = happyShift action_35
action_46 (42) = happyShift action_36
action_46 (5) = happyGoto action_29
action_46 (6) = happyGoto action_79
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_31
action_47 (8) = happyShift action_32
action_47 (9) = happyShift action_33
action_47 (10) = happyShift action_34
action_47 (30) = happyShift action_35
action_47 (42) = happyShift action_36
action_47 (5) = happyGoto action_29
action_47 (6) = happyGoto action_78
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (7) = happyShift action_31
action_48 (8) = happyShift action_32
action_48 (34) = happyShift action_77
action_48 (42) = happyShift action_40
action_48 (5) = happyGoto action_76
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (7) = happyShift action_31
action_49 (8) = happyShift action_32
action_49 (34) = happyShift action_75
action_49 (42) = happyShift action_40
action_49 (5) = happyGoto action_74
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (7) = happyShift action_31
action_50 (8) = happyShift action_32
action_50 (42) = happyShift action_40
action_50 (5) = happyGoto action_73
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (7) = happyShift action_31
action_51 (8) = happyShift action_32
action_51 (42) = happyShift action_40
action_51 (5) = happyGoto action_72
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (7) = happyShift action_31
action_52 (8) = happyShift action_32
action_52 (42) = happyShift action_40
action_52 (5) = happyGoto action_71
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (7) = happyShift action_31
action_53 (8) = happyShift action_32
action_53 (42) = happyShift action_40
action_53 (5) = happyGoto action_70
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (7) = happyShift action_31
action_54 (8) = happyShift action_32
action_54 (42) = happyShift action_40
action_54 (5) = happyGoto action_69
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_31
action_55 (8) = happyShift action_32
action_55 (42) = happyShift action_40
action_55 (5) = happyGoto action_68
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (7) = happyShift action_31
action_56 (8) = happyShift action_32
action_56 (42) = happyShift action_40
action_56 (5) = happyGoto action_67
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (7) = happyShift action_31
action_57 (8) = happyShift action_32
action_57 (9) = happyShift action_33
action_57 (10) = happyShift action_34
action_57 (30) = happyShift action_35
action_57 (42) = happyShift action_36
action_57 (5) = happyGoto action_29
action_57 (6) = happyGoto action_66
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (35) = happyShift action_51
action_58 (36) = happyShift action_52
action_58 (37) = happyShift action_53
action_58 (38) = happyShift action_54
action_58 (39) = happyShift action_55
action_58 _ = happyReduce_4

action_59 (35) = happyShift action_51
action_59 (36) = happyShift action_52
action_59 (37) = happyShift action_53
action_59 (38) = happyShift action_54
action_59 (39) = happyShift action_55
action_59 _ = happyReduce_6

action_60 _ = happyReduce_9

action_61 _ = happyReduce_10

action_62 (7) = happyShift action_31
action_62 (8) = happyShift action_32
action_62 (35) = happyShift action_51
action_62 (36) = happyShift action_52
action_62 (37) = happyShift action_53
action_62 (38) = happyShift action_54
action_62 (39) = happyShift action_55
action_62 (42) = happyShift action_40
action_62 (5) = happyGoto action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_31
action_63 (8) = happyShift action_32
action_63 (42) = happyShift action_40
action_63 (5) = happyGoto action_64
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (35) = happyShift action_51
action_64 (36) = happyShift action_52
action_64 (37) = happyShift action_53
action_64 (38) = happyShift action_54
action_64 (39) = happyShift action_55
action_64 (40) = happyShift action_87
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (35) = happyShift action_51
action_65 (36) = happyShift action_52
action_65 (37) = happyShift action_53
action_65 (38) = happyShift action_54
action_65 (39) = happyShift action_55
action_65 _ = happyReduce_7

action_66 (28) = happyShift action_46
action_66 (29) = happyShift action_47
action_66 _ = happyReduce_14

action_67 (35) = happyShift action_51
action_67 (36) = happyShift action_52
action_67 (37) = happyShift action_53
action_67 (38) = happyShift action_54
action_67 (39) = happyShift action_55
action_67 _ = happyReduce_12

action_68 _ = happyReduce_17

action_69 _ = happyReduce_19

action_70 _ = happyReduce_18

action_71 (37) = happyShift action_53
action_71 (38) = happyShift action_54
action_71 (39) = happyShift action_55
action_71 _ = happyReduce_21

action_72 (37) = happyShift action_53
action_72 (38) = happyShift action_54
action_72 (39) = happyShift action_55
action_72 _ = happyReduce_20

action_73 (35) = happyShift action_51
action_73 (36) = happyShift action_52
action_73 (37) = happyShift action_53
action_73 (38) = happyShift action_54
action_73 (39) = happyShift action_55
action_73 _ = happyReduce_32

action_74 (35) = happyShift action_51
action_74 (36) = happyShift action_52
action_74 (37) = happyShift action_53
action_74 (38) = happyShift action_54
action_74 (39) = happyShift action_55
action_74 _ = happyReduce_30

action_75 (7) = happyShift action_31
action_75 (8) = happyShift action_32
action_75 (42) = happyShift action_40
action_75 (5) = happyGoto action_86
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (35) = happyShift action_51
action_76 (36) = happyShift action_52
action_76 (37) = happyShift action_53
action_76 (38) = happyShift action_54
action_76 (39) = happyShift action_55
action_76 _ = happyReduce_28

action_77 (7) = happyShift action_31
action_77 (8) = happyShift action_32
action_77 (42) = happyShift action_40
action_77 (5) = happyGoto action_85
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_26

action_79 _ = happyReduce_25

action_80 (13) = happyShift action_84
action_80 (41) = happyShift action_37
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_35

action_82 _ = happyReduce_24

action_83 (35) = happyShift action_51
action_83 (36) = happyShift action_52
action_83 (37) = happyShift action_53
action_83 (38) = happyShift action_54
action_83 (39) = happyShift action_55
action_83 (43) = happyShift action_82
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (11) = happyShift action_4
action_84 (14) = happyShift action_5
action_84 (16) = happyShift action_6
action_84 (17) = happyShift action_7
action_84 (18) = happyShift action_8
action_84 (19) = happyShift action_9
action_84 (20) = happyShift action_10
action_84 (21) = happyShift action_11
action_84 (22) = happyShift action_12
action_84 (23) = happyShift action_13
action_84 (24) = happyShift action_14
action_84 (25) = happyShift action_2
action_84 (26) = happyShift action_15
action_84 (27) = happyShift action_16
action_84 (4) = happyGoto action_89
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (35) = happyShift action_51
action_85 (36) = happyShift action_52
action_85 (37) = happyShift action_53
action_85 (38) = happyShift action_54
action_85 (39) = happyShift action_55
action_85 _ = happyReduce_29

action_86 (35) = happyShift action_51
action_86 (36) = happyShift action_52
action_86 (37) = happyShift action_53
action_86 (38) = happyShift action_54
action_86 (39) = happyShift action_55
action_86 _ = happyReduce_31

action_87 (7) = happyShift action_31
action_87 (8) = happyShift action_32
action_87 (42) = happyShift action_40
action_87 (5) = happyGoto action_88
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (35) = happyShift action_51
action_88 (36) = happyShift action_52
action_88 (37) = happyShift action_53
action_88 (38) = happyShift action_54
action_88 (39) = happyShift action_55
action_88 (43) = happyShift action_90
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (41) = happyShift action_37
action_89 _ = happyReduce_13

action_90 (7) = happyShift action_31
action_90 (8) = happyShift action_32
action_90 (42) = happyShift action_40
action_90 (5) = happyGoto action_91
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (35) = happyShift action_51
action_91 (36) = happyShift action_52
action_91 (37) = happyShift action_53
action_91 (38) = happyShift action_54
action_91 (39) = happyShift action_55
action_91 _ = happyReduce_11

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
		 (Blank happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Scale happy_var_2 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happyReduce 4 4 happyReduction_7
happyReduction_7 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Print happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_2  4 happyReduction_8
happyReduction_8 (HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (OutFile happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TileAnd happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (TileOr happy_var_2 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happyReduce 8 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn5  happy_var_8) `HappyStk`
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

happyReduce_12 = happyReduce 4 4 happyReduction_12
happyReduction_12 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Assign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 4 happyReduction_13
happyReduction_13 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 4 4 happyReduction_14
happyReduction_14 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSeq happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSemi happy_var_1
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  5 happyReduction_20
happyReduction_20 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (TileInt happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Get happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  5 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  6 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  6 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negation happy_var_2
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happyReduce 4 6 happyReduction_29
happyReduction_29 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsLessEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_3  6 happyReduction_30
happyReduction_30 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsGreater happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happyReduce 4 6 happyReduction_31
happyReduction_31 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsGreaterEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  6 happyReduction_33
happyReduction_33 _
	 =  HappyAbsSyn6
		 (TileTrue
	)

happyReduce_34 = happySpecReduce_1  6 happyReduction_34
happyReduction_34 _
	 =  HappyAbsSyn6
		 (TileFalse
	)

happyReduce_35 = happySpecReduce_3  6 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

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
	TokenLet _ -> cont 14;
	TokenWhile _ -> cont 15;
	TokenDo _ -> cont 16;
	TokenReverse _ -> cont 17;
	TokenRotate _ -> cont 18;
	TokenBlank _ -> cont 19;
	TokenLoad _ -> cont 20;
	TokenScale _ -> cont 21;
	TokenTileAnd _ -> cont 22;
	TokenTileOr _ -> cont 23;
	TokenPrint _ -> cont 24;
	TokenCreateCanvas _ -> cont 25;
	TokenOutFile _ -> cont 26;
	TokenSubtitle _ -> cont 27;
	TokenAnd _ -> cont 28;
	TokenOr _ -> cont 29;
	TokenNegation _ -> cont 30;
	TokenLess _ -> cont 31;
	TokenGreater _ -> cont 32;
	TokenEq _ -> cont 33;
	TokenAssign _ -> cont 34;
	TokenPlus _ -> cont 35;
	TokenMinus _ -> cont 36;
	TokenTimes _ -> cont 37;
	TokenDiv _ -> cont 38;
	TokenExp _ -> cont 39;
	TokenComma _ -> cont 40;
	TokenStatSep _ -> cont 41;
	TokenLeftParen _ -> cont 42;
	TokenRightParen _ -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
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
-- type CEK = (Exp, Env, Kont)
-- type Env = [(String, TileInt)]
-- type Frame = Exp [-] | [-] Exp
-- type Kont = [Frame]

data Exp
    = CreateCanvas TileName ExpCalc |
    Load String  |
    Reverse TileName  |
    Rotate TileName ExpCalc |
    Blank TileName  |       
    Scale TileName ExpCalc  |    
    Print TileName ExpCalc ExpCalc  | 
    Subtitle TileName ExpCalc ExpCalc ExpCalc  |
    OutFile String   |
    TileAnd TileName TileName |
    TileOr TileName TileName |
    IfElse ExpBool Exp Exp  |
    While Exp ExpBool  |
    Assign VarName ExpCalc  |
    StatSeq Exp Exp  |
    StatSemi Exp
    -- Cl VarName Exp Env
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
