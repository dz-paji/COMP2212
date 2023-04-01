{ 
module TileTokens where 
}

%wrapper "posn" 

$digit = 0-9     
-- digits 
$alpha = [a-zA-Z]    
-- alphabetic characters

tokens :-
$white+       ; 
  "--".*        ; 
  $digit+       { tok(\p s -> TokenInt p (read s)) } 
  true           { tok (\p s -> TokenTrue p) }
  false          { tok (\p s -> TokenFalse p) }
  if           { tok(\p s -> TokenIf p) }
  then          { tok(\p s -> TokenThen p) }
  else            { tok(\p s -> TokenElse p) }
  for            { tok (\p s -> TokenFor p) }
  while            { tok (\p s -> TokenWhile p) }
  REVERSE         { tok(\p s -> TokenReverse p) }
  ROTATE           { tok (\p s -> TokenRotate p) }
  BLANK           { tok (\p s -> TokenBlank p) }
  LOAD            { tok (\p s -> TokenLoad p) }
  SCALE           { tok (\p s -> TokenScale p) }
  PRINT             { tok (\p s -> TokenPrint p) }
  CREATECANVAS      { tok (\p s -> TokenCreateCanvas p) }
  SUBTITLE        { tok (\p s -> TokenSubtitle p) }
  \+\+            { tok(\p s -> TokenPlusOne p) }
  \-\-            { tok (\p s -> TokenMinusOne p) }
  \&\&             { tok (\p s -> TokenAnd p) }
  \|\|             { tok(\p s -> TokenOr p) }
  \!\!             { tok (\p s -> TokenNegation p) }
  \=            { tok(\p s -> TokenEq p) }
  \+            { tok(\p s -> TokenPlus p) }
  \-            { tok(\p s -> TokenMinus p) }
  \*            { tok(\p s -> TokenTimes p) }
  \/            { tok(\p s -> TokenDiv p) }
  \^            { tok(\p s -> TokenExp p) }
  \(            { tok (\p s -> TokenLeftParen p) }
  \)            { tok (\p s -> TokenRightParen p) }
  $alpha [$alpha $digit \_ \’]*   { tok (\p s -> TokenVar p s ) } 

{ 
-- Each action has type :: AlexPosn -> String -> Token 
tok f p s = f p s

-- The token type: 
data Token = 
  TokenInt AlexPosn Int    |
  TokenTrue AlexPosn       |
  TokenFalse AlexPosn      |
  TokenVar AlexPosn String | 
  TokenIf AlexPosn         |
  TokenThen AlexPosn       |
  TokenElse AlexPosn       |
  TokenFor AlexPosn        |
  TokenWhile AlexPosn      |
  TokenPlusOne AlexPosn    |
  TokenMinusOne AlexPosn   |
  TokenReverse AlexPosn    |
  TokenRotate   AlexPosn   |
  TokenBlank AlexPosn      |
  TokenLoad AlexPosn       |
  TokenScale AlexPosn      |
  TokenPrint AlexPosn      |
  TokenCreateCanvas AlexPosn |
  TokenSubtitle AlexPosn   |
  TokenAnd AlexPosn        |
  TokenOr AlexPosn         |
  TokenNegation AlexPosn   |
  TokenEq  AlexPosn        |
  TokenPlus AlexPosn       |
  TokenMinus AlexPosn      |
  TokenTimes AlexPosn      |
  TokenDiv AlexPosn        |
  TokenExp AlexPosn        |
  TokenLeftParen AlexPosn  |
  TokenRightParen AlexPosn |
  deriving (Eq,Show) 

tokenPosn :: TileTokens -> String
tokenPosn (TokenInt  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTrue  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFalse  (AlexPn a l c) n) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenVar  (AlexPn a l c) x) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenIf (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenThen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenElse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenFor (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenWhile (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenReverse (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRotate (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenBlank (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLoad (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenCreateCanvas (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenScale (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenSubtitle (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPrint (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlusOne (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinusOne (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenAnd (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenOr (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenNegation (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenEq  (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenPlus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenMinus (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenTimes (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenDiv (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenExp (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenLParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)
tokenPosn (TokenRParen (AlexPn a l c)) = show(l) ++ ":" ++ show(c)

}