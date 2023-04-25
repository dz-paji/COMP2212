module Eval where import TileGrammar

type CEK = (Exp, Env, Kont)
type Env = [(String, TileInt)]
type Frame = Exp [-] | [-] Exp
type Kont = [Frame]
data Closure = Cl String Exp Env

-- evalExp, evaluates an exp
-- TODO: standardize the return type of evalExp
evalExp expr = case expr of
    (CreateCanvas var calc_expr) -> n     -- 创建一个新画布
    (Load var) -> (var, var) -- 导入文件  
    (Reverse var) -> reverse var  -- 反转 0 -> 1, 1 -> 0
    (Rotate var calc_expr) -> rotateTile var calc_expr  -- 旋转 + 角度（90 180 270）
    (Blank var) -> (var, []) -- 这又是干啥的来着
    (Scale var calc_expr) -> scaleTile var calc_expr
    (Print var calc_expr calc_expr) -> var -- 这是干啥的来着   这是把一个tile变量打印到画布上
    (Subtitle var_a var_b) -> var -- 这是干啥的来着  取子集
    (OutFile fileName) -> fileName -- 输出文件
    (IfThen bool_expr then_expr) -> evalIfThen (evalBoolExpr bool_expr) then_expr  -- 这个可以不要其实
    (IfElse bool_expr then_expr else_expr) -> evalIfElse (evalBoolExpr bool_expr) then_expr else_expr
    (While expr bool_expr) -> evalWhile expr bool_expr -- 这个新加的 执行的是do while
    (Assign var calc_expr) -> var

-- TODO: implement rotateTile
rotateTile :: Exp -> CalcExpr -> Tile
rotateTile _ _ = []

-- TODO: implement scaleTile
scaleTile :: Tile -> CalcExpr -> Tile
scaleTile _ _ = []

evalWhile expr cond =
    if (evalBoolExpr cond)
        then evalExp expr
        else []

evalIfThen :: Bool -> Exp -> Exp
evalIfThen True expr = evalExp expr
evalIfThen False _ = []

evalIfElse :: Bool -> Exp -> Exp -> Exp
evalIfElse True expr _ = evalExp expr
evalIfElse False _ expr = evalExp expr

evalBoolExpr :: BoolExpr -> Bool
evalBoolExpr (And expr_a expr_b) = evalBoolExpr expr_a && evalBoolExpr expr_b
evalBoolExpr (Or expr_a expr_b) = evalBoolExpr expr_a || evalBoolExpr expr_b
evalBoolExpr (Negation expr) = not $ evalBoolExpr expr
evalBoolExpr (IsLess expr_a expr_b) = evalBoolExpr expr_a < evalBoolExpr expr_b
evalBoolExpr (IsLessEq expr_a expr_b) = evalBoolExpr expr_a <= evalBoolExpr expr_b
evalBoolExpr (IsGreater expr_a expr_b) = evalBoolExpr expr_a > evalBoolExpr expr_b
evalBoolExpr (IsGreaterEq expr_a expr_b) = evalBoolExpr expr_a >= evalBoolExpr expr_b
evalBoolExpr (IsEqual expr_a expr_b) = evalBoolExpr expr_a == evalBoolExpr expr_b
evalBoolExpr TileTrue = True
evalBoolExpr TileFalse = False

evalCalc :: CalcExpr -> Int
evalCalc expr = case expr of
    (Expo base exponent) -> (base ^ this)
    (Times a b) -> (a * b)
    (Div a  b) -> (a / b)
    (Minus a b) -> (a - b)
    (Plus a b) -> (a + b)
    (TileInt a) -> a
    (Get a) -> (show a)

unpackClosure :: Exp -> (Exp, Env)
unpackClosure (Cl var exp env) = (expr, env)
unpackClosure e = (e, [])

updateEnv env varName exp = (varName, exp) : env

-- check if a term is terminated
checkTerm :: Exp -> Bool
checkTerm (TileInt _) = True
checkTerm (TileTrue) = True
checkTerm (TileFalse) = True
checkTerm (TileVar _) = True
checkTerm (Cl _ _ _) = True
checkTerm _ = False

-- CEK machine implementation
letsEval :: Exp -> Exp
letsEval e = doEval (e, [], [])
doEval (e, env, kon) = if (e' == e) && (checkTerm e') && (null kon)
    then e'
    else doEval (e', env', kon')
    where
        (e', env', kon') = evalExp (e, env, kon)

