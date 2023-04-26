module Eval where 
import TileGrammar
import Data.List

type Tile = [String]
data Frame = FAssign TileName Env | FPrint Int | FSeq Exp | FWhile Exp ExpBool-- TODO: Fix frame
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
-- evaluate Assign
evalExp ((Assign var calc_expr), env, (FSeq exp):kon) = (exp, env', kon)
    where
        v = fst $ evalCalc (calc_expr, env) :: Int
        env' = updateEnv env var [(show v)]
evalExp ((Assign var calc_expr), env, kon) = ((Cl var env'), env', kon)
    where
        v = fst $ evalCalc (calc_expr, env) :: Int
        env' = updateEnv env var [(show v)]

-- evaluate Blank
evalExp ((Blank var), env, kon) = ((Cl var env'), env', kon)
    where 
        blank_size_x = case (lookupEnv var env) of
            [] -> 0
            (x:xs) -> length (snd x) :: Int
        blank_size_y = length (lookupEnv var env)
        blank = replicate blank_size (replicate blank_size '0')
        env' = updateEnv env var blank

-- evaluate CreateCanvas
evalExp ((CreateCanvas var calc_expr), env, kon) = ((Cl var env'), env', kon)
    where
        v = fst $ evalCalc (calc_expr, env) :: Int
        env' = updateEnv env var (replicate v (replicate v '0'))

-- evaluate Clone
evalExp ((Clone var1 var2), env, kon) = ((Cl var2 env'), env', kon)
    where
        value1 = snd $ head $ (lookupEnv var1 env)
        env' = updateEnv env var2 value1

-- evaluate for
evalExp ((For do_expr i i exp), env, kon) = ((Cl var env'), env', kon)
    where

evalExp ((While do_exp bool_exp), env, kon)
    | evalBoolExpr bool_exp == True = (do_exp, env, (FWhile do_exp bool_exp):kon)
    | otherwise = ((Cl "while loop" env), env, kon)
evalExp (v, env, (FWhile do_exp bool_exp):kon) | checkTerm v = ((While do_exp bool_exp), env, kon)

-- evaluate if else
evalExp ((IfElse bool_exp then_exp else_exp), env, kon)
    | evalBoolExpr bool_exp == True = (then_exp, env, kon)
    | otherwise = (else_exp, env, kon)

-- evaluate Load
evalExp ((Load file_name), env, kon) = ((Cl varname env'), env', kon)
    where
        env' = updateEnv env file_name (readFile file_name)

-- evaluate new tile
evalExp ((NewTile var), env, kon) = ((Cl var env'), env', kon)
    where
        env' = updateEnv env var []

-- evaluate Output to stdout
evalExp ((OutFile var), env, kon) | lookupEnv var env == [] = error ("run time error")
                                  | otherwise = ((Output var env), env, kon)

-- evaluate print
evalExp ((Print part_name canvas_name x_expr y_expr), env, kon) = ((Cl canvas_name env'), env', kon)
    where
        part_value = snd $ head $ (lookupEnv part_name env)
        canvas_value = snd $ head $ (lookupEnv canvas_name env)
        x_value = fst $ evalCalc (x_expr, env)
        y_value = fst $ evalCalc (y_expr, env)
        env' = updateEnv env var (printTile value canvas_value)

-- evaluate reverse
evalExp ((Reverse var), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (reverseTile value)

-- evaluate rotate
evalExp ((Rotate var calc_expr), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        v = fst $ evalCalc (calc_expr, env ) :: Int
        env' = updateEnv env var (rotateTile value v env)

-- evaluate reflect x
evalExp ((ReflectX var), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (reflectX value)

-- evaluate reflect y
evalExp ((ReflectY var), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (reflectY value)

-- evaluate closure
evalExp ((Cl _ _), env, (FSeq exp):kon) = (exp, env, kon)

-- evaluate ; (StatSemi and StatSeq)
evalExp ((StatSemi exp) , env, kon) = (exp, env, kon)
evalExp ((StatSeq exp1 exp2), env, kon) = (exp1, env, (FSeq exp2):kon)
evalExp (v, env, (FSeq exp):kon) | checkTerm v = (exp, env, kon)

---------------------------------
------- HELPER FUNCTIONS --------
---------------------------------
-- remove .tsl extension from file name
removeTslExt :: String -> String
removeTslExt fileName = (take (length fileName - 4)) fileName

-- REVERSE
reverseTile :: Tile -> Tile
reverseTile _ = []
reverseTile value = map (map negate) value
    where 
        negate '0' = '1'  
        negate '1' = '0'
        negate c = '0'

-- ROTATE
rotateTile :: Tile -> CalcExpr -> Env -> Tile
rotateTile tile deg env =
    | (fst $ evalCalc (deg, env)) `mod` 90 \= 0 = error "invalid degree" 
    | (fst $ evalCalc (deg, env)) `div` 90 `mod` 4 == 0 = tile
    | (fst $ evalCalc (deg, env)) `div` 90 `mod` 4 == 1 = transpose (reverse tile) 
    | (fst $ evalCalc (deg, env)) `div` 90 `mod` 4 == 2 = map reverse (map reverse .transpose) tile
    | (fst $ evalCalc (deg, env)) `div` 90 `mod` 4 == 3 = reverse (transpose tile)

-- SCALE
scaleTile :: Tile -> CalcExpr -> Tile
scaleTile tile n = concatMap (\s -> concat $ replicate (replicate n s)) tile

-- REFLECTX
reflectXTile :: Tile -> Tile
reflectXTile = reverse

-- REFLECTY
reflectYTile :: Tile -> Tile
reflectYTile = map reverse

-- CLONE
-- keyword clone use to clone one tile to another therefore just return the first tile itself
cloneTile :: Tile -> Tile
clone tile = tile

subtitleTile :: Tile -> (ExpCalc,ExpCalc) -> ExpCalc -> Env -> Tile
subtitleTile tile (x_exp,y_exp) n_exp env = map (take n . drop x) $ (take n . drop y) tile
    where
        x = fst $ evalCalc (x_exp, env)
        y = fst $ evalCalc (y_exp, env)
        n = fst $ evalCalc (n_exp, env)

-- TILEAND
andTile :: Tile -> Tile -> Tile
andTile t1 t2 = zipWith zipRow t1 t2
    where
        zipRow r1 r2 = zipWith(\c1 c2 -> if c1 == '1' && c2 == '1' then '1' else '0')

-- TILEOR
orTile :: Tile -> Tile -> Tile
andTile t1 t2 = zipWith zipRow t1 t2
    where
        zipRow r1 r2 = zipWith(\c1 c2 -> if c1 == '1' || c2 == '1' then '1' else '0')

-- BLANK
blankTile :: Tile -> Tile
blankTile tile = replicate (length tile) (replicate (length $ head tile) '0')

-- TILECOMB
combTile :: Tile -> Tile -> String -> Tile
combTile t1 t2 dir = 
    | dir == 'U' = t2 ++ t1
    | dir == 'D' = t1 ++ t2
    | dir == 'R' = zipWith (++) t1 t2
    | dir == 'L' = zipWith (++) t2 t1
    | otherwise = error "Invalid Direction"

evalIfElse :: Bool -> Exp -> Exp -> Exp
evalIfElse True expr _ = expr
evalIfElse False _ expr = expr

-------------------------------------
------- HELPER FUNCTIONS END --------
-------------------------------------

-- evalFor do_expr var cond for_expr =
--     if (evalBoolExpr cond)
--         then evalExp expr 
--         else []

evalBoolExpr :: ExpBool -> Env -> Bool
evalBoolExpr (And expr_a expr_b) env = evalBoolExpr expr_a env && evalBoolExpr expr_b env
evalBoolExpr (Or expr_a expr_b) env = evalBoolExpr expr_a env || evalBoolExpr expr_b env
evalBoolExpr (Negation expr) env = not $ evalBoolExpr expr env
evalBoolExpr (IsLess expr_a expr_b) env = evalCalc (expr_a, env) < evalCalc (expr_b, env)
evalBoolExpr (IsLessEq expr_a expr_b) env = evalCalc (expr_a, env) <= evalCalc (expr_b, env)
evalBoolExpr (IsGreater expr_a expr_b) env = evalCalc (expr_a, env) > evalCalc (expr_b, env)
evalBoolExpr (IsGreaterEq expr_a expr_b) env = evalCalc (expr_a, env) >= evalCalc (expr_b, env)
evalBoolExpr (IsEq expr_a expr_b) env = evalCalc (expr_a, env) == evalCalc (expr_b, env)
evalBoolExpr TileTrue _ = True
evalBoolExpr TileFalse _ = False

evalCalc :: (ExpCalc, Env) -> (Int, Env)
evalCalc (expr, env) = case expr of
    (Expo base exponent) -> (evalCalc base ^ (evalCalc exponent), env)
    (Times a b) -> ((evalCalc a * evalCalc b), env)
    (Div a  b) -> ((evalCalc a / evalCalc b), env)
    (Minus a b) -> ((evalCalc a - evalCalc b), env)
    (Plus a b) -> ((evalCalc a + evalCalc b), env)
    (TileInt a) -> (evalCalc a, env)
    (Get a) -> ((read (snd $ head $ (lookupEnv a env)) :: Int), env)

unpackClosure :: Exp -> (Exp, Env)
unpackClosure (Cl var env) = (var, env)
unpackClosure e = (e, [])

updateEnv :: Env -> String -> [String] -> Env
updateEnv env varName value = (varName, value) : env
    -- | length $ (lookupEnv varName env) == 0 = [(varName, value)] : env
    -- | otherwise = ([(varName, exp)] : (filter (\(x, _) -> x /= varName) env))

-- check if a term is terminated
checkTerm :: a -> Bool
-- checkTerm (TileInt _) = True
-- checkTerm (TileTrue) = True
-- checkTerm (TileFalse) = True
checkTerm (OutFile _) = True
checkTerm (Cl _ _) = True
checkTerm _ = False

-- CEK machine implementation
letsEval :: Exp -> Exp
letsEval e = doEval (e, [], [])
doEval (e, env, kon) = if (e' == e) && (checkTerm e') && (null kon) -- loop until no reduction toke place and closed.
    then e'
    else doEval (e', env', kon')
    where
        (e', env', kon') = evalExp (e, env, kon)

parseExp (OutFile var, env) = snd $ length $ lookupEnv var env