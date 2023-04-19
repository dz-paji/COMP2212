{-# OPTIONS_GHC -w #-}
module TileGrammar where 
import TileTokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (TileTokens)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,156) ([58368,63,0,512,0,2,0,61952,31,15360,4096,64,1,0,32,0,1024,0,32768,0,0,16,0,512,0,16384,0,0,8,0,256,0,0,0,0,6,8192,0,0,0,0,0,3,4096,0,0,0,0,1,0,2012,512,48,0,0,0,0,0,0,0,0,0,57344,32769,512,60,16400,0,0,12288,0,256,0,7936,192,0,4,49152,381,0,8195,0,96,16384,1022,32768,7,2050,240,64,1537,0,49184,0,1024,24,32768,768,0,24592,0,512,12,16384,384,0,12296,0,256,6,8192,0,57344,3,0,124,0,0,0,61440,1,0,0,0,0,0,0,0,0,28,0,896,0,31744,0,32768,15,0,496,0,0,0,0,0,4093,0,0,0,0,0,0,0,380,65424,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseCalc","Exp","ExpCalc","ExpBool","int","var","true","false","if","then","else","let","REVERSE","ROTATE","BLANK","LOAD","SCALE","PRINT","CREATECANVAS","SUBTITLE","'&&'","'||'","'!!'","'<'","'>'","'=='","'='","'+'","'-'","'*'","'/'","'^'","'('","')'","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

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
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (8) = happyShift action_30
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (11) = happyShift action_4
action_3 (14) = happyShift action_5
action_3 (15) = happyShift action_6
action_3 (16) = happyShift action_7
action_3 (17) = happyShift action_8
action_3 (18) = happyShift action_9
action_3 (19) = happyShift action_10
action_3 (20) = happyShift action_11
action_3 (21) = happyShift action_2
action_3 (22) = happyShift action_12
action_3 (37) = happyAccept
action_3 (4) = happyGoto action_29
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (7) = happyShift action_23
action_4 (8) = happyShift action_24
action_4 (9) = happyShift action_25
action_4 (10) = happyShift action_26
action_4 (25) = happyShift action_27
action_4 (35) = happyShift action_28
action_4 (5) = happyGoto action_21
action_4 (6) = happyGoto action_22
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (8) = happyShift action_20
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (8) = happyShift action_19
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (8) = happyShift action_18
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (8) = happyShift action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (8) = happyShift action_15
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (8) = happyShift action_50
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_7

action_15 (7) = happyShift action_23
action_15 (8) = happyShift action_24
action_15 (35) = happyShift action_32
action_15 (5) = happyGoto action_49
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_2

action_17 _ = happyReduce_5

action_18 (7) = happyShift action_23
action_18 (8) = happyShift action_24
action_18 (35) = happyShift action_32
action_18 (5) = happyGoto action_48
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_3

action_20 (29) = happyShift action_47
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (26) = happyShift action_39
action_21 (27) = happyShift action_40
action_21 (28) = happyShift action_41
action_21 (30) = happyShift action_42
action_21 (31) = happyShift action_43
action_21 (32) = happyShift action_44
action_21 (33) = happyShift action_45
action_21 (34) = happyShift action_46
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (12) = happyShift action_36
action_22 (23) = happyShift action_37
action_22 (24) = happyShift action_38
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_17

action_24 _ = happyReduce_18

action_25 _ = happyReduce_26

action_26 _ = happyReduce_27

action_27 (7) = happyShift action_23
action_27 (8) = happyShift action_24
action_27 (9) = happyShift action_25
action_27 (10) = happyShift action_26
action_27 (25) = happyShift action_27
action_27 (35) = happyShift action_28
action_27 (5) = happyGoto action_21
action_27 (6) = happyGoto action_35
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_23
action_28 (8) = happyShift action_24
action_28 (9) = happyShift action_25
action_28 (10) = happyShift action_26
action_28 (25) = happyShift action_27
action_28 (35) = happyShift action_28
action_28 (5) = happyGoto action_33
action_28 (6) = happyGoto action_34
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (11) = happyShift action_4
action_29 (14) = happyShift action_5
action_29 (15) = happyShift action_6
action_29 (16) = happyShift action_7
action_29 (17) = happyShift action_8
action_29 (18) = happyShift action_9
action_29 (19) = happyShift action_10
action_29 (20) = happyShift action_11
action_29 (21) = happyShift action_2
action_29 (22) = happyShift action_12
action_29 (4) = happyGoto action_29
action_29 _ = happyReduce_11

action_30 (7) = happyShift action_23
action_30 (8) = happyShift action_24
action_30 (35) = happyShift action_32
action_30 (5) = happyGoto action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (30) = happyShift action_42
action_31 (31) = happyShift action_43
action_31 (32) = happyShift action_44
action_31 (33) = happyShift action_45
action_31 (34) = happyShift action_46
action_31 _ = happyReduce_1

action_32 (7) = happyShift action_23
action_32 (8) = happyShift action_24
action_32 (35) = happyShift action_32
action_32 (5) = happyGoto action_65
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (26) = happyShift action_39
action_33 (27) = happyShift action_40
action_33 (28) = happyShift action_41
action_33 (30) = happyShift action_42
action_33 (31) = happyShift action_43
action_33 (32) = happyShift action_44
action_33 (33) = happyShift action_45
action_33 (34) = happyShift action_46
action_33 (36) = happyShift action_64
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (23) = happyShift action_37
action_34 (24) = happyShift action_38
action_34 (36) = happyShift action_63
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (23) = happyShift action_37
action_35 (24) = happyShift action_38
action_35 _ = happyReduce_22

action_36 (11) = happyShift action_4
action_36 (14) = happyShift action_5
action_36 (15) = happyShift action_6
action_36 (16) = happyShift action_7
action_36 (17) = happyShift action_8
action_36 (18) = happyShift action_9
action_36 (19) = happyShift action_10
action_36 (20) = happyShift action_11
action_36 (21) = happyShift action_2
action_36 (22) = happyShift action_12
action_36 (4) = happyGoto action_62
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (7) = happyShift action_23
action_37 (8) = happyShift action_24
action_37 (9) = happyShift action_25
action_37 (10) = happyShift action_26
action_37 (25) = happyShift action_27
action_37 (35) = happyShift action_28
action_37 (5) = happyGoto action_21
action_37 (6) = happyGoto action_61
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (7) = happyShift action_23
action_38 (8) = happyShift action_24
action_38 (9) = happyShift action_25
action_38 (10) = happyShift action_26
action_38 (25) = happyShift action_27
action_38 (35) = happyShift action_28
action_38 (5) = happyGoto action_21
action_38 (6) = happyGoto action_60
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (7) = happyShift action_23
action_39 (8) = happyShift action_24
action_39 (35) = happyShift action_32
action_39 (5) = happyGoto action_59
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (7) = happyShift action_23
action_40 (8) = happyShift action_24
action_40 (35) = happyShift action_32
action_40 (5) = happyGoto action_58
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (7) = happyShift action_23
action_41 (8) = happyShift action_24
action_41 (35) = happyShift action_32
action_41 (5) = happyGoto action_57
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (7) = happyShift action_23
action_42 (8) = happyShift action_24
action_42 (35) = happyShift action_32
action_42 (5) = happyGoto action_56
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (7) = happyShift action_23
action_43 (8) = happyShift action_24
action_43 (35) = happyShift action_32
action_43 (5) = happyGoto action_55
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (7) = happyShift action_23
action_44 (8) = happyShift action_24
action_44 (35) = happyShift action_32
action_44 (5) = happyGoto action_54
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (7) = happyShift action_23
action_45 (8) = happyShift action_24
action_45 (35) = happyShift action_32
action_45 (5) = happyGoto action_53
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (7) = happyShift action_23
action_46 (8) = happyShift action_24
action_46 (35) = happyShift action_32
action_46 (5) = happyGoto action_52
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (7) = happyShift action_23
action_47 (8) = happyShift action_24
action_47 (35) = happyShift action_32
action_47 (5) = happyGoto action_51
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (30) = happyShift action_42
action_48 (31) = happyShift action_43
action_48 (32) = happyShift action_44
action_48 (33) = happyShift action_45
action_48 (34) = happyShift action_46
action_48 _ = happyReduce_4

action_49 (30) = happyShift action_42
action_49 (31) = happyShift action_43
action_49 (32) = happyShift action_44
action_49 (33) = happyShift action_45
action_49 (34) = happyShift action_46
action_49 _ = happyReduce_6

action_50 _ = happyReduce_8

action_51 (30) = happyShift action_42
action_51 (31) = happyShift action_43
action_51 (32) = happyShift action_44
action_51 (33) = happyShift action_45
action_51 (34) = happyShift action_46
action_51 _ = happyReduce_9

action_52 _ = happyReduce_12

action_53 _ = happyReduce_14

action_54 _ = happyReduce_13

action_55 (32) = happyShift action_44
action_55 (33) = happyShift action_45
action_55 (34) = happyShift action_46
action_55 _ = happyReduce_16

action_56 (32) = happyShift action_44
action_56 (33) = happyShift action_45
action_56 (34) = happyShift action_46
action_56 _ = happyReduce_15

action_57 (30) = happyShift action_42
action_57 (31) = happyShift action_43
action_57 (32) = happyShift action_44
action_57 (33) = happyShift action_45
action_57 (34) = happyShift action_46
action_57 _ = happyReduce_25

action_58 (30) = happyShift action_42
action_58 (31) = happyShift action_43
action_58 (32) = happyShift action_44
action_58 (33) = happyShift action_45
action_58 (34) = happyShift action_46
action_58 _ = happyReduce_24

action_59 (30) = happyShift action_42
action_59 (31) = happyShift action_43
action_59 (32) = happyShift action_44
action_59 (33) = happyShift action_45
action_59 (34) = happyShift action_46
action_59 _ = happyReduce_23

action_60 _ = happyReduce_21

action_61 _ = happyReduce_20

action_62 (11) = happyShift action_4
action_62 (13) = happyShift action_66
action_62 (14) = happyShift action_5
action_62 (15) = happyShift action_6
action_62 (16) = happyShift action_7
action_62 (17) = happyShift action_8
action_62 (18) = happyShift action_9
action_62 (19) = happyShift action_10
action_62 (20) = happyShift action_11
action_62 (21) = happyShift action_2
action_62 (22) = happyShift action_12
action_62 (4) = happyGoto action_29
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_28

action_64 _ = happyReduce_19

action_65 (30) = happyShift action_42
action_65 (31) = happyShift action_43
action_65 (32) = happyShift action_44
action_65 (33) = happyShift action_45
action_65 (34) = happyShift action_46
action_65 (36) = happyShift action_64
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (11) = happyShift action_4
action_66 (14) = happyShift action_5
action_66 (15) = happyShift action_6
action_66 (16) = happyShift action_7
action_66 (17) = happyShift action_8
action_66 (18) = happyShift action_9
action_66 (19) = happyShift action_10
action_66 (20) = happyShift action_11
action_66 (21) = happyShift action_2
action_66 (22) = happyShift action_12
action_66 (4) = happyGoto action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (11) = happyShift action_4
action_67 (14) = happyShift action_5
action_67 (15) = happyShift action_6
action_67 (16) = happyShift action_7
action_67 (17) = happyShift action_8
action_67 (18) = happyShift action_9
action_67 (19) = happyShift action_10
action_67 (20) = happyShift action_11
action_67 (21) = happyShift action_2
action_67 (22) = happyShift action_12
action_67 (4) = happyGoto action_29
action_67 _ = happyReduce_10

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

happyReduce_7 = happySpecReduce_2  4 happyReduction_7
happyReduction_7 _
	_
	 =  HappyAbsSyn4
		 (Print var
	)

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyTerminal (TokenVar _ happy_var_3))
	(HappyTerminal (TokenVar _ happy_var_2))
	_
	 =  HappyAbsSyn4
		 (Subtitle happy_var_2 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happyReduce 4 4 happyReduction_9
happyReduction_9 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar _ happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Assign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 6 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (IfElse happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_2  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (StatementSep happy_var_1 happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Expo happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Times happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Div happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  5 happyReduction_17
happyReduction_17 (HappyTerminal (TokenInt _ happy_var_1))
	 =  HappyAbsSyn5
		 (Int happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 (HappyTerminal (TokenVar _ happy_var_1))
	 =  HappyAbsSyn5
		 (Get happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  5 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  6 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (And happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  6 happyReduction_21
happyReduction_21 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Or happy_var_1 happy_var_3
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  6 happyReduction_22
happyReduction_22 (HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (Negation happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  6 happyReduction_23
happyReduction_23 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsLess happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  6 happyReduction_24
happyReduction_24 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn6
		 (IsGreater happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  6 happyReduction_25
happyReduction_25 _
	_
	_
	 =  HappyAbsSyn6
		 (IsEq
	)

happyReduce_26 = happySpecReduce_1  6 happyReduction_26
happyReduction_26 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn6
		 (True happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn6
		 (False happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn6  happy_var_2)
	_
	 =  HappyAbsSyn6
		 (happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

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
	TokenSubtitle _ -> cont 22;
	TokenAnd _ -> cont 23;
	TokenOr _ -> cont 24;
	TokenNegation _ -> cont 25;
	TokenLess _ -> cont 26;
	TokenGreater _ -> cont 27;
	TokenEq _ -> cont 28;
	TokenAssign _ -> cont 29;
	TokenPlus _ -> cont 30;
	TokenMinus _ -> cont 31;
	TokenTimes _ -> cont 32;
	TokenDiv _ -> cont 33;
	TokenExp _ -> cont 34;
	TokenLeftParen _ -> cont 35;
	TokenRightParen _ -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
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
happyError' :: () => ([(TileTokens)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseCalc tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [TileTokens] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

--data TileType  = TileInt Int | TileVar String | TileCommand deriving (Show,Eq)

data Exp
    = CreateCanvas TileVar ExpCalc |
    Load TileVar |
    Reverse TileVar |
    Rotate TileVar ExpCalc |
    Blank TileVar  |       
    Scale TileVar ExpCalc  |    
    Print TileVar ExpCalc ExpCalc | 
    Subtitle TileVar TileVar  |  
    IfElse ExpBool Exp Exp  |
    Let TileVar ExpCalc  |
    StatementSep Exp Exp  
    deriving (Show,Eq)

data ExpCalc
    = Expo TileInt TileInt |
    Times TileInt TileInt |
    Div TileInt TileInt |
    Minus TileInt TileInt |
    Plus TileInt TileInt |
    MinusOne TileInt |
    PlusOne TileInt |
    Int TileInt |
    Get TileVar 
    deriving (Show,Eq)

data ExpBool 
    = And ExpBool ExpBool |
    Or ExpBool ExpBool |
    Negation ExpBool |
    IsLess ExpCalc ExpCalc |
    IsGreater ExpCalc ExpCalc |
    IsEq ExpCalc ExpCalc |
    True |
    False  
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
