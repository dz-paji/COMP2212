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
    new             { TokenNew _ }
    let             { TokenLet _ }
    while           { TokenWhile _ }
    for             { TokenFor _ }
    do              { TokenDo _ }
    REVERSE         { TokenReverse _ }
    ROTATE          { TokenRotate _ }
    REFLECTX        { TokenReflectX _ }
    REFLECTY        { TokenReflectY _ }
    BLANK           { TokenBlank _ }
    CLONE           { TokenClone _ }
    LOAD            { TokenLoad _ }
    SCALE           { TokenScale _ }
    SIZE            { TokenSize _ } 
    TILECOMB        {TokenTileComb _ }
    TILEAND         { TokenTileAnd _ }
    TILEOR          { TokenTileOr _ }
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
    ','             { TokenComma _ } 
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
    | REVERSE var      {Reverse $2}
    | ROTATE var ExpCalc   {Rotate $2 $3}
    | REFLECTX var      {ReflectX $2}
    | REFLECTY var      {ReflectY $2}
    | BLANK  var        {Blank $2}
    | CLONE var var     {Clone $2 $3}
    | SCALE var ExpCalc    {Scale $2 $3}
    | PRINT var var '(' ExpCalc ',' ExpCalc ')'   {Print $2 $3 $5 $7}
    | OUTFILE  var      {OutFile $2}
    | TILEAND  var var  {TileAnd $2 $3}
    | TILEOR var var    {TileOr $2 $3}
    | TILECOMB var var var  {TileComb $2 $3 $4}
    | SUBTITLE var '('ExpCalc ',' ExpCalc ')' ExpCalc  {Subtitle $2 $4 $6 $8}
    | new var    {NewTile $2}
    | let var '=' ExpCalc  {Assign $2 $4}
    | if ExpBool then Exp else Exp  {IfElse $2 $4 $6} 
    | do Exp while '(' ExpBool ')'    {While $2 $5}
    | do Exp for '(' var ';' ExpBool ';' Exp ')'  {For $2 $5 $7 $9}
    | Exp ';' Exp    {StatSeq $1 $3}
    | Exp ';'        {StatSemi $1 }


-- Calculation of number
ExpCalc : ExpCalc '^' ExpCalc  {Expo $1 $3}
     | ExpCalc '*' ExpCalc  {Times $1 $3}
     | ExpCalc '/' ExpCalc  {Div $1 $3}
     | ExpCalc '+' ExpCalc   {Plus $1 $3}
     | ExpCalc '-' ExpCalc   {Minus $1 $3}
     | SIZE var {GetSize $2}
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

} 