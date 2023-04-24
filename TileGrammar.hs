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
happyExpList = Happy_Data_Array.listArray (0,160) ([58368,127,0,2048,0,32,0,0,0,256,60,32,1025,0,0,2,0,256,0,32768,0,0,64,0,8192,0,0,16,0,2048,0,0,4,0,512,0,0,0,0,192,0,24592,0,2048,0,0,0,0,0,12,0,1,0,0,0,128,0,47104,15,32776,1,0,0,0,0,0,0,0,0,0,0,30,32784,3840,2048,64,65480,0,192,0,16,0,992,48,0,4,0,0,0,32192,2,3072,256,0,6,51200,255,49152,3,4098,480,256,12296,0,1032,24,1024,3074,0,256,6,32768,768,0,32832,1,8192,192,0,24592,0,2048,48,0,4,0,248,0,31744,1536,0,190,0,0,0,32768,15,0,1984,0,0,0,0,0,0,0,0,0,112,0,14336,0,0,31,0,3968,192,0,16,0,992,48,0,4,0,0,0,0,32768,0,64,0,0,0,0,0,0,10176,61952,63,0,0,496,0,63488,0,0,128,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","ExpCalc","ExpBool","int","var","true","false","if","then","else","let","REVERSE","ROTATE","BLANK","LOAD","SCALE","PRINT","CREATECANVAS","OUTFILE","SUBTITLE","'&&'","'||'","'!!'","'<'","'>'","'=='","'='","'+'","'-'","'*'","'/'","'^'","';'","'('","')'","%eof"]
        bit_start = st * 39
        bit_end = (st + 1) * 39
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..38]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_4
action_0 (14) = happyShift action_5
action_0 (15) = happyShift action_6
action_0 (16) = happyShift action_7
action_0 (17) = happyShift action_8
action_0 (18) = happyShift action_9
action_0 (19) = happyShift action_10
action_0 (20) = happyShift action_11
action_0 (21) = happyShift action_2
action_0 (22) = happyShift action_12
action_0 (23) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_32
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (36) = happyShift action_31
action_3 (39) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_25
action_4 (8) = happyShift action_26
action_4 (9) = happyShift action_27
action_4 (10) = happyShift action_28
action_4 (26) = happyShift action_29
action_4 (37) = happyShift action_30
action_4 (5) = happyGoto action_23
action_4 (6) = happyGoto action_24
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (8) = happyShift action_22
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_21
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_20
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_19
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_18
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_17
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_16
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_14
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_54
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_8

action_16 (7) = happyShift action_25
action_16 (8) = happyShift action_26
action_16 (37) = happyShift action_34
action_16 (5) = happyGoto action_53
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (7) = happyShift action_25
action_17 (8) = happyShift action_26
action_17 (37) = happyShift action_34
action_17 (5) = happyGoto action_52
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_2

action_19 _ = happyReduce_5

action_20 (7) = happyShift action_25
action_20 (8) = happyShift action_26
action_20 (37) = happyShift action_34
action_20 (5) = happyGoto action_51
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_3

action_22 (30) = happyShift action_50
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (27) = happyShift action_42
action_23 (28) = happyShift action_43
action_23 (29) = happyShift action_44
action_23 (31) = happyShift action_45
action_23 (32) = happyShift action_46
action_23 (33) = happyShift action_47
action_23 (34) = happyShift action_48
action_23 (35) = happyShift action_49
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (12) = happyShift action_39
action_24 (24) = happyShift action_40
action_24 (25) = happyShift action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_19

action_26 _ = happyReduce_20

action_27 _ = happyReduce_30

action_28 _ = happyReduce_31

action_29 (7) = happyShift action_25
action_29 (8) = happyShift action_26
action_29 (9) = happyShift action_27
action_29 (10) = happyShift action_28
action_29 (26) = happyShift action_29
action_29 (37) = happyShift action_30
action_29 (5) = happyGoto action_23
action_29 (6) = happyGoto action_38
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_25
action_30 (8) = happyShift action_26
action_30 (9) = happyShift action_27
action_30 (10) = happyShift action_28
action_30 (26) = happyShift action_29
action_30 (37) = happyShift action_30
action_30 (5) = happyGoto action_36
action_30 (6) = happyGoto action_37
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (11) = happyShift action_4
action_31 (14) = happyShift action_5
action_31 (15) = happyShift action_6
action_31 (16) = happyShift action_7
action_31 (17) = happyShift action_8
action_31 (18) = happyShift action_9
action_31 (19) = happyShift action_10
action_31 (20) = happyShift action_11
action_31 (21) = happyShift action_2
action_31 (22) = happyShift action_12
action_31 (23) = happyShift action_13
action_31 (4) = happyGoto action_35
action_31 _ = happyReduce_13

action_32 (7) = happyShift action_25
action_32 (8) = happyShift action_26
action_32 (37) = happyShift action_34
action_32 (5) = happyGoto action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (31) = happyShift action_45
action_33 (32) = happyShift action_46
action_33 (33) = happyShift action_47
action_33 (34) = happyShift action_48
action_33 (35) = happyShift action_49
action_33 _ = happyReduce_1

action_34 (7) = happyShift action_25
action_34 (8) = happyShift action_26
action_34 (37) = happyShift action_34
action_34 (5) = happyGoto action_72
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_12

action_36 (27) = happyShift action_42
action_36 (28) = happyShift action_43
action_36 (29) = happyShift action_44
action_36 (31) = happyShift action_45
action_36 (32) = happyShift action_46
action_36 (33) = happyShift action_47
action_36 (34) = happyShift action_48
action_36 (35) = happyShift action_49
action_36 (38) = happyShift action_71
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (24) = happyShift action_40
action_37 (25) = happyShift action_41
action_37 (38) = happyShift action_70
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (24) = happyShift action_40
action_38 (25) = happyShift action_41
action_38 _ = happyReduce_24

action_39 (11) = happyShift action_4
action_39 (14) = happyShift action_5
action_39 (15) = happyShift action_6
action_39 (16) = happyShift action_7
action_39 (17) = happyShift action_8
action_39 (18) = happyShift action_9
action_39 (19) = happyShift action_10
action_39 (20) = happyShift action_11
action_39 (21) = happyShift action_2
action_39 (22) = happyShift action_12
action_39 (23) = happyShift action_13
action_39 (4) = happyGoto action_69
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_25
action_40 (8) = happyShift action_26
action_40 (9) = happyShift action_27
action_40 (10) = happyShift action_28
action_40 (26) = happyShift action_29
action_40 (37) = happyShift action_30
action_40 (5) = happyGoto action_23
action_40 (6) = happyGoto action_68
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_25
action_41 (8) = happyShift action_26
action_41 (9) = happyShift action_27
action_41 (10) = happyShift action_28
action_41 (26) = happyShift action_29
action_41 (37) = happyShift action_30
action_41 (5) = happyGoto action_23
action_41 (6) = happyGoto action_67
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_25
action_42 (8) = happyShift action_26
action_42 (30) = happyShift action_66
action_42 (37) = happyShift action_34
action_42 (5) = happyGoto action_65
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_25
action_43 (8) = happyShift action_26
action_43 (30) = happyShift action_64
action_43 (37) = happyShift action_34
action_43 (5) = happyGoto action_63
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_25
action_44 (8) = happyShift action_26
action_44 (37) = happyShift action_34
action_44 (5) = happyGoto action_62
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_25
action_45 (8) = happyShift action_26
action_45 (37) = happyShift action_34
action_45 (5) = happyGoto action_61
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_25
action_46 (8) = happyShift action_26
action_46 (37) = happyShift action_34
action_46 (5) = happyGoto action_60
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_25
action_47 (8) = happyShift action_26
action_47 (37) = happyShift action_34
action_47 (5) = happyGoto action_59
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (7) = happyShift action_25
action_48 (8) = happyShift action_26
action_48 (37) = happyShift action_34
action_48 (5) = happyGoto action_58
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (7) = happyShift action_25
action_49 (8) = happyShift action_26
action_49 (37) = happyShift action_34
action_49 (5) = happyGoto action_57
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (7) = happyShift action_25
action_50 (8) = happyShift action_26
action_50 (37) = happyShift action_34
action_50 (5) = happyGoto action_56
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (31) = happyShift action_45
action_51 (32) = happyShift action_46
action_51 (33) = happyShift action_47
action_51 (34) = happyShift action_48
action_51 (35) = happyShift action_49
action_51 _ = happyReduce_4

action_52 (31) = happyShift action_45
action_52 (32) = happyShift action_46
action_52 (33) = happyShift action_47
action_52 (34) = happyShift action_48
action_52 (35) = happyShift action_49
action_52 _ = happyReduce_6

action_53 (7) = happyShift action_25
action_53 (8) = happyShift action_26
action_53 (31) = happyShift action_45
action_53 (32) = happyShift action_46
action_53 (33) = happyShift action_47
action_53 (34) = happyShift action_48
action_53 (35) = happyShift action_49
action_53 (37) = happyShift action_34
action_53 (5) = happyGoto action_55
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_9

action_55 (31) = happyShift action_45
action_55 (32) = happyShift action_46
action_55 (33) = happyShift action_47
action_55 (34) = happyShift action_48
action_55 (35) = happyShift action_49
action_55 _ = happyReduce_7

action_56 (31) = happyShift action_45
action_56 (32) = happyShift action_46
action_56 (33) = happyShift action_47
action_56 (34) = happyShift action_48
action_56 (35) = happyShift action_49
action_56 _ = happyReduce_10

action_57 _ = happyReduce_14

action_58 _ = happyReduce_16

action_59 _ = happyReduce_15

action_60 (33) = happyShift action_47
action_60 (34) = happyShift action_48
action_60 (35) = happyShift action_49
action_60 _ = happyReduce_18

action_61 (33) = happyShift action_47
action_61 (34) = happyShift action_48
action_61 (35) = happyShift action_49
action_61 _ = happyReduce_17

action_62 (31) = happyShift action_45
action_62 (32) = happyShift action_46
action_62 (33) = happyShift action_47
action_62 (34) = happyShift action_48
action_62 (35) = happyShift action_49
action_62 _ = happyReduce_29

action_63 (31) = happyShift action_45
action_63 (32) = happyShift action_46
action_63 (33) = happyShift action_47
action_63 (34) = happyShift action_48
action_63 (35) = happyShift action_49
action_63 _ = happyReduce_27

action_64 (7) = happyShift action_25
action_64 (8) = happyShift action_26
action_64 (37) = happyShift action_34
action_64 (5) = happyGoto action_75
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (31) = happyShift action_45
action_65 (32) = happyShift action_46
action_65 (33) = happyShift action_47
action_65 (34) = happyShift action_48
action_65 (35) = happyShift action_49
action_65 _ = happyReduce_25

action_66 (7) = happyShift action_25
action_66 (8) = happyShift action_26
action_66 (37) = happyShift action_34
action_66 (5) = happyGoto action_74
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_23

action_68 _ = happyReduce_22

action_69 (13) = happyShift action_73
action_69 (36) = happyShift action_31
action_69 _ = happyFail (happyExpListPerState 69)

action_70 _ = happyReduce_32

action_71 _ = happyReduce_21

action_72 (31) = happyShift action_45
action_72 (32) = happyShift action_46
action_72 (33) = happyShift action_47
action_72 (34) = happyShift action_48
action_72 (35) = happyShift action_49
action_72 (38) = happyShift action_71
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (11) = happyShift action_4
action_73 (14) = happyShift action_5
action_73 (15) = happyShift action_6
action_73 (16) = happyShift action_7
action_73 (17) = happyShift action_8
action_73 (18) = happyShift action_9
action_73 (19) = happyShift action_10
action_73 (20) = happyShift action_11
action_73 (21) = happyShift action_2
action_73 (22) = happyShift action_12
action_73 (23) = happyShift action_13
action_73 (4) = happyGoto action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (31) = happyShift action_45
action_74 (32) = happyShift action_46
action_74 (33) = happyShift action_47
action_74 (34) = happyShift action_48
action_74 (35) = happyShift action_49
action_74 _ = happyReduce_26

action_75 (31) = happyShift action_45
action_75 (32) = happyShift action_46
action_75 (33) = happyShift action_47
action_75 (34) = happyShift action_48
action_75 (35) = happyShift action_49
action_75 _ = happyReduce_28

action_76 (36) = happyShift action_31
action_76 _ = happyReduce_11

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
		 (Subtitle happy_var_2 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Assign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happyReduce 6 4 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSeq happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  4 happyReduction_13
happyReduction_13 _
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatSemi happy_var_1
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  5 happyReduction_18
happyReduction_18 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (TileInt happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  5 happyReduction_20
happyReduction_20 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Get happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  6 happyReduction_24
happyReduction_24 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negation happy_var_2
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happyReduce 4 6 happyReduction_26
happyReduction_26 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsLessEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happySpecReduce_3  6 happyReduction_27
happyReduction_27 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsGreater happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happyReduce 4 6 happyReduction_28
happyReduction_28 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (IsGreaterEq happy_var_1 happy_var_4
	) `HappyStk` happyRest

happyReduce_29 = happySpecReduce_3  6 happyReduction_29
happyReduction_29 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsEq happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  6 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn6
		 (TileTrue
	)

happyReduce_31 = happySpecReduce_1  6 happyReduction_31
happyReduction_31 _
	 =  HappyAbsSyn6
		 (TileFalse
	)

happyReduce_32 = happySpecReduce_3  6 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

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
	TokenReverse _ -> cont 15;
	TokenRotate _ -> cont 16;
	TokenBlank _ -> cont 17;
	TokenLoad _ -> cont 18;
	TokenScale _ -> cont 19;
	TokenPrint _ -> cont 20;
	TokenCreateCanvas _ -> cont 21;
	TokenOutFile _ -> cont 22;
	TokenSubtitle _ -> cont 23;
	TokenAnd _ -> cont 24;
	TokenOr _ -> cont 25;
	TokenNegation _ -> cont 26;
	TokenLess _ -> cont 27;
	TokenGreater _ -> cont 28;
	TokenEq _ -> cont 29;
	TokenAssign _ -> cont 30;
	TokenPlus _ -> cont 31;
	TokenMinus _ -> cont 32;
	TokenTimes _ -> cont 33;
	TokenDiv _ -> cont 34;
	TokenExp _ -> cont 35;
	TokenStatSep _ -> cont 36;
	TokenLeftParen _ -> cont 37;
	TokenRightParen _ -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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

data Exp
    = CreateCanvas String ExpCalc |
    Load String  |
    Reverse String  |
    Rotate String ExpCalc |
    Blank String  |       
    Scale String ExpCalc  |    
    Print String ExpCalc ExpCalc  | 
    Subtitle String String  |
    OutFile String   |
    IfElse ExpBool Exp Exp  |
    Let String ExpCalc  |
    Assign String ExpCalc  |
    StatSeq Exp Exp  |
    StatSemi Exp
    deriving (Show,Eq)

data ExpCalc
    = Expo ExpCalc ExpCalc |
    Times ExpCalc ExpCalc |
    Div ExpCalc ExpCalc |
    Minus ExpCalc ExpCalc |
    Plus ExpCalc ExpCalc |
    TileInt Int |
    Get String 
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
