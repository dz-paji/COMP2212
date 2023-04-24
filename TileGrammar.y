{ 
module TileGrammar where 
import TileTokens 
}

%name parseCalc 
%tokentype { Token } 
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
    OUTFILE         { TokenOutFile _ }
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
    ';'             { TokenStatSep _ }
    '('             { TokenLeftParen _ }    
    ')'             { TokenRightParen _ }    

%nonassoc int true false var 
%nonassoc if then else
%nonassoc '(' 
%nonassoc ')'
%nonassoc '<' '>' '=='
%nonassoc '!!'
%left ';'
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
    | PRINT var ExpCalc ExpCalc    {Print $2 $3 $4}
    | OUTFILE  var      {OutFile $2}
    | SUBTITLE var var  {Subtitle $2 $3}
    | let var '=' ExpCalc  {Assign $2 $4}
    | if ExpBool then Exp else Exp  {IfElse $2 $4 $6} 
    | Exp ';' Exp    {StatSeq $1 $3}
    | Exp ';'        {StatSemi $1 }


-- Calculation of number
ExpCalc : ExpCalc '^' ExpCalc  {Expo $1 $3}
     | ExpCalc '*' ExpCalc  {Times $1 $3}
     | ExpCalc '/' ExpCalc  {Div $1 $3}
     | ExpCalc '+' ExpCalc   {Plus $1 $3}
     | ExpCalc '-' ExpCalc   {Minus $1 $3}
     | int   {TileInt $1}
     | var   {Get $1}
     | '(' ExpCalc ')'   {$2}

-- Calculation of boolean expression
ExpBool : ExpBool '&&' ExpBool  {And $1 $3}
     | ExpBool '||' ExpBool  {Or $1 $3}
     | '!!' ExpBool       {Negation $2}
     | ExpCalc '<' ExpCalc   {IsLess $1 $3}
     | ExpCalc '<' '=' ExpCalc   {IsLessEq $1 $4}
     | ExpCalc '>' ExpCalc   {IsGreater $1 $3}
     | ExpCalc '>' '=' ExpCalc   {IsGreaterEq $1 $4}
     | ExpCalc '==' ExpCalc  {IsEq $1 $3}
     | true     {TileTrue }
     | false    {TileFalse }
     | '(' ExpBool ')'    {$2}


{ 
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

} 