module Eval where 
import TileGrammar

data Frame = FAssign TileName Env | FPrint Int-- TODO: Fix frame
type Kont = [Frame]
type CEK = (Exp, Env, Kont)

-- type Env = [(String, TileInt)]
-- type Frame = Exp [-] | [-] Exp
-- type Kont = [Frame]
-- data Closure = Cl String Exp Env

-- evalExp, evaluates an exp
-- TODO: standardize the return type of evalExp
-- evalExp expr = case expr of
--     (CreateCanvas var calc_expr) -> n     -- 创建一个新画布
--     (Load var) -> (var, var) -- 导入文件  
--     (Reverse var) -> reverse var  -- 反转 0 -> 1, 1 -> 0
--     (Rotate var calc_expr) -> rotateTile var calc_expr  -- 旋转 + 角度（90 180 270）
--     (Blank var) -> (var, []) -- 这又是干啥的来着
--     (Scale var calc_expr) -> scaleTile var calc_expr
--     (Print var calc_expr calc_expr) -> var -- 这是干啥的来着   这是把一个tile变量打印到画布上 
--     (Subtitle var_a var_b) -> var -- 这是干啥的来着  取子集
--     (OutFile fileName) -> fileName -- 输出文件
--     (IfThen bool_expr then_expr) -> evalIfThen (evalBoolExpr bool_expr) then_expr  -- 这个可以不要其实
--     (IfElse bool_expr then_expr else_expr) -> evalIfElse (evalBoolExpr bool_expr) then_expr else_expr
--     (For do_expr var expr)
--     (While expr bool_expr) -> evalWhile expr bool_expr -- 这个新加的 执行的是do while
--     (Assign var calc_expr) -> var

lookupEnv :: String -> Env -> Env
lookupEnv x [] = []
lookupEnv x (this@(varName, _): env) | x == varName = [this]
                                     | otherwise = lookupEnv x env

-- evaluate assignment
evalExp :: CEK -> CEK
evalExp ((Assign var calc_expr), env, kon) = ((Cl var env'), env', kon)
    where
        v = evalCalc calc_expr
        env' = updateEnv env var v

evalExp ((OutFile var), env, kon) | lookupEnv var env == [] = error ("run time error")
                                  | otherwise = ((Cl var env), env, (FPrint v):kon)
    where
        v = snd $ head $ lookupEnv var env

-- TODO: implement rotateTile
-- rotateTile :: Exp -> CalcExpr -> Tile
rotateTile _ _ = []

-- TODO: implement scaleTile
-- scaleTile :: Tile -> CalcExpr -> Tile
scaleTile _ _ = []

-- TODO: implement reverseTile 
-- reverseTile :: Tile -> Tile
reverseTile _ = []


-- TODO: implement combinationTile
-- combTile :: Tile -> Tile -> String -> Tile
combinationTile _ _ dir = []

-- TODO: implement reflectTile X-axis
reflectXTile _ = []

-- TODO: implement reflectTile Y-axis
reflectYTile _ = []
    

-- evalWhile expr cond =
--     if (evalBoolExpr cond)
--         then evalExp expr
--         else []

-- evalFor do_expr var cond for_expr =
--     if (evalBoolExpr cond)
--         then evalExp expr 
--         else []

evalIfThen :: Bool -> Exp -> Exp
evalIfThen True expr = evalExp expr
evalIfThen False _ = []

evalIfElse :: Bool -> Exp -> Exp -> Exp
evalIfElse True expr _ = evalExp expr
evalIfElse False _ expr = evalExp expr

evalBoolExpr :: ExpBool -> Bool
evalBoolExpr (And expr_a expr_b) = evalBoolExpr expr_a && evalBoolExpr expr_b
evalBoolExpr (Or expr_a expr_b) = evalBoolExpr expr_a || evalBoolExpr expr_b
evalBoolExpr (Negation expr) = not $ evalBoolExpr expr
evalBoolExpr (IsLess expr_a expr_b) = evalCalc expr_a < evalCalc expr_b
evalBoolExpr (IsLessEq expr_a expr_b) = evalCalc expr_a <= evalCalc expr_b
evalBoolExpr (IsGreater expr_a expr_b) = evalCalc expr_a > evalCalc expr_b
evalBoolExpr (IsGreaterEq expr_a expr_b) = evalCalc expr_a >= evalCalc expr_b
evalBoolExpr (IsEq expr_a expr_b) = evalCalc expr_a == evalCalc expr_b
evalBoolExpr TileTrue = True
evalBoolExpr TileFalse = False

evalCalc :: ExpCalc -> Int
evalCalc expr = case expr of
    (Expo base exponent) -> (evalCalc base ^ (evalCalc exponent))
    (Times a b) -> (evalCalc a * evalCalc b)
    (Div a  b) -> (evalCalc a / evalCalc b)
    (Minus a b) -> (evalCalc a - evalCalc b)
    (Plus a b) -> (evalCalc a + evalCalc b)
    (TileInt a) -> evalCalc a
    (Get a) -> (show a)

unpackClosure :: Exp -> (Exp, Env)
unpackClosure (Cl var env) = (var, env)
unpackClosure e = (e, [])

updateEnv env varName exp 
    | length $ (lookupEnv varName env) == 0 = (varName, exp) : env
    | otherwise = ((varName, exp) : (filter (\(x, _) -> x /= varName) env))

-- check if a term is terminated
checkTerm :: a -> Bool
-- checkTerm (TileInt _) = True
checkTerm (TileTrue) = True
checkTerm (TileFalse) = True
checkTerm (OutFile _) = True
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

parseExp (OutFile var, env) = snd $ length $ lookupEnv var env