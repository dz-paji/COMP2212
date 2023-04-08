{ 
module TileGrammar where 
import TileTokens 
}

%name parseCalc 
%tokentype { TileToken } 
%error { parseError }

%token 
    int             { TokenInt $$ }
    var             { TokenVar $$ }
    true            { TokenTrue }
    false           { TokenFalse }
    if              { TokenIf }
    then            { TokenThen }
    else            { TokenElse }
    for             { TokenFor }
    while           { TokenWhile }
    REVERSE         { TokenReverse }
    ROTATE          { TokenRotate } 
    BLANK           { TokenBlank }
    LOAD            { TokenLoad }
    SCALE           { TokenScale }
    PRINT           { TokenPrint }
    CREATECANVAS    { TokenCreateCanvas }
    SUBTITLE        { TokenSubtitle }
    '++'            { TokenPlusOne }
    '--'            { TokenMinusOne }
    '&&'            { TokenAnd }
    '||'            { TokenOr }
    '!!'            { TokenNegation } 
    '<'             { TokenLess } 
    '>'             { TokenGreater } 
    '=='             { TokenEq }
    '+'             { TokenPlus }
    '-'             { TokenMinus }    
    '*'             { TokenTimes }
    '/'             { TokenDiv }
    '^'             { TokenExp }
    '('             { TokenLeftParen }    
    ')'             { TokenRightParen }    

%nonassoc '<' '>' '=='
%left '+' '-'
%left '*' '/' '^'
%left '&&' '||'

%%
-- Root Expression
Exp : CREATECANVAS var Calc {CreateCanvas $2 $3}
    | LOAD var          {Load $2}
    | REVERSE var       {Reverse $2}
    | ROTATE var Calc    {Rotate $2 $3}
    | BLANK  var        {Blank $2}
    | SCALE var Calc     {Scale $2 $3}
    | PRINT var (Calc,Calc)    {Print var}
    | SUBTITLE var var  {Subtitle $2 $3}
    | if Bool then Exp else Exp    { If $2 $4 $6 } 

-- Calculation
Calc : Calc '^' Calc  {Expo $1 $3}
     | Calc '*' Calc  {Times $1 $3}
     | Calc '/' Calc  {Div $1 $3}
     | Calc '+' Calc   {Plus $1 $3}
     | Calc '-' Calc   {Minus $1 $3}
     | Calc '++'     {PlusOne $1}
     | Calc '--'     {MinusOne $1}
     | int   {Int $1}
     | var   {Get $1}
     | '(' Calc ')'   {Paren $2}

-- Logic
Bool : Bool '&&' Bool  {And $1 $3}
     | Bool '||' Bool  {Or $1 $3}
     | '!!' Bool       {Negation $2}
     | Calc '<' Calc   {IsLess $1 $3}
     | Calc '>' Calc   {IsGreater $1 $3}
     | Calc '==' Calc  {IsEq}
     | true     {True $1}
     | false    {False $1}
     | '(' Bool ')'    {Paren $2}



-- Loop
-- ForLoop : for var int Bool Calc   {For $2 $3 $4 $5} 

-- WhileLoop : while Bool





{ 
parseError :: [TileToken] -> a
parseError [] = error "Unknown Parse Error" 
parseError (t:ts) = error ("Parse error at line:column " ++ (tokenPosn t))

data Type  = Int | Var deriving (Show,Eq)

data Exp
    = CreateCanvas Var Calc |
    Load Var |
    Reverse Var |
    Rotate Var Calc |
    Blank Var  |       
    Scale Var Calc  |    
    Print Var Calc Calc | 
    Subtitle Var Var  |  
    If Bool Exp Exp  deriving (Show,Eq)

data Calc
    = Expo Int |
    Times Int Int |
    Div Int Int |
    Minus Int Int |
    Plus Int Int |
    MinusOne Int |
    PlusOne Int |
    Int |
    Get Var |
    Paren Calc  deriving (Show,Eq)

data Bool 
    = And Bool Bool |
    Or Bool Bool |
    Negation Bool |
    IsLess Calc Calc |
    IsGreater Calc Calc |
    IsEq Calc Calc |
    True |
    False  deriving (Show,Eq)

} 