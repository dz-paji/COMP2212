{ 
module TileGrammar where 
import TileTokens 
}

%name parseCalc 
%tokentype { TileTokens } 
%error { parseError }

%token 
    int             { TokenInt _ $$ }
    var             { TokenVar _ $$ }
    true            { TokenTrue _ }
    false           { TokenFalse _ }
    if              { TokenIf _ }
    then            { TokenThen _ }
    else            { TokenElse _ }
    let             { TokenLet _ }
    REVERSE         { TokenReverse _ }
    ROTATE          { TokenRotate _ } 
    BLANK           { TokenBlank _ }
    LOAD            { TokenLoad _ }
    SCALE           { TokenScale _ }
    PRINT           { TokenPrint _ }
    CREATECANVAS    { TokenCreateCanvas _ }
    --PRINTCANVAS     { TokenPrintCanvas _ }
    SUBTITLE        { TokenSubtitle _ }
    '&&'            { TokenAnd _ }
    '||'            { TokenOr _ }
    '!!'            { TokenNegation _ } 
    '<'             { TokenLess _ } 
    '>'             { TokenGreater _ } 
    '=='            { TokenEq _ }
    '='             { TokenAssign _ }
    '+'             { TokenPlus _ }
    '-'             { TokenMinus _ }    
    '*'             { TokenTimes _ }
    '/'             { TokenDiv _ }
    '^'             { TokenExp _ }
    '('             { TokenLeftParen _ }    
    ')'             { TokenRightParen _ }    

%nonassoc int true false var 
%nonassoc '(' 
%nonassoc ')'
%nonassoc '<' '>' '=='
%nonassoc '!!'
%left '+' '-'
%left '*' '/' '^'
%left '&&' '||'

%%
-- Root Expression with basic command and clause

Exp : CREATECANVAS var ExpCalc {CreateCanvas $2 $3}
    | LOAD var          {Load $2}
    | REVERSE var       {Reverse $2}
    | ROTATE var ExpCalc   {Rotate $2 $3}
    | BLANK  var        {Blank $2}
    | SCALE var ExpCalc    {Scale $2 $3}
    | PRINT var      {Print var}
    | SUBTITLE var var  {Subtitle $2 $3}
    | let var '=' ExpCalc  {Assign $2 $4}
    | if ExpBool then Exp else Exp  {IfElse $2 $4 $6} 


-- Calculation of number
ExpCalc : ExpCalc '^' ExpCalc  {Expo $1 $3}
     | ExpCalc '*' ExpCalc  {Times $1 $3}
     | ExpCalc '/' ExpCalc  {Div $1 $3}
     | ExpCalc '+' ExpCalc   {Plus $1 $3}
     | ExpCalc '-' ExpCalc   {Minus $1 $3}
     | int   {Int $1}
     | var   {Get $1}
     | '(' ExpCalc ')'   {$2}

-- Calculation of boolean expression
ExpBool : ExpBool '&&' ExpBool  {And $1 $3}
     | ExpBool '||' ExpBool  {Or $1 $3}
     | '!!' ExpBool       {Negation $2}
     | ExpCalc '<' ExpCalc   {IsLess $1 $3}
     | ExpCalc '>' ExpCalc   {IsGreater $1 $3}
     | ExpCalc '==' ExpCalc  {IsEq}
     | true     {True $1}
     | false    {False $1}
     | '(' ExpBool ')'    {$2}


{ 
parseError :: [TileTokens] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type  = TileInt Int | TileVar String | TileTrue | TileFalse deriving (Show,Eq)

data Exp
    = CreateCanvas TileVar ExpCalc |
    Load TileVar |
    Reverse TileVar |
    Rotate TileVar ExpCalc |
    Blank TileVar  |       
    Scale TileVar ExpCalc  |    
    Print TileVar ExpCalc ExpCalc | 
    Subtitle TileVar TileVar  | 
    IfThen ExpBool Exp  | 
    IfElse ExpBool Exp Exp  |
    Let TileVar ExpCalc
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
    Get TileVar |
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

} 