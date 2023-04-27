module Eval where 
import TileGrammar
import Data.List
import System.IO.Unsafe (unsafePerformIO)

type Tile = [String]
data Frame = FAssign TileName Env | FPrint Int | FSeq Exp | FWhile Exp ExpBool
             | FFor Exp VarName ExpBool Exp | FForInc Exp VarName ExpBool Exp deriving (Show, Eq)-- TODO: Fix frame
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
        blank = replicate blank_size_y (replicate blank_size_x '0')
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
evalExp ((For do_expr i cond inc_exp), env, kon) = (do_expr, env, (FFor do_expr i cond inc_exp):kon)
evalExp (v, env, (FFor do_expr i cond inc_exp):kon)
    | checkTerm v && ((evalBoolExpr cond env) == True) = (inc_exp, env, (FForInc do_expr i cond inc_exp):kon)
    | checkTerm v && ((evalBoolExpr cond env) == False) = ((Cl "for ends" env), env, kon)
evalExp (v, env, (FForInc do_expr i cond inc_exp):kon)
    | checkTerm v = (do_expr, env, (FFor do_expr i cond inc_exp):kon)

-- evaluate While
evalExp ((While do_exp bool_exp), env, kon) = (do_exp, env, (FWhile do_exp bool_exp):kon)
evalExp (v, env, (FWhile do_exp bool_exp):kon)
    | checkTerm v && ((evalBoolExpr bool_exp env) == True) = ((While do_exp bool_exp), env, kon)
    | checkTerm v && ((evalBoolExpr bool_exp env) == False) = ((Cl "while ends" env), env, kon)

-- evaluate if else
evalExp ((IfElse bool_exp then_exp else_exp), env, kon)
    | evalBoolExpr bool_exp env == True = (then_exp, env, kon)
    | otherwise = (else_exp, env, kon)

-- evaluate Load
evalExp ((Load file_name), env, kon) = ((Cl var_name env'), env', kon)
    where
        tile_value = escapeMonad $ readTile file_name
        var_name = removeTslExt file_name
        env' = updateEnv env var_name tile_value

-- evaluate new tile
evalExp ((NewTile var), env, kon) = ((Cl var env'), env', kon)
    where
        env' = updateEnv env var []

-- evaluate Output to stdout
evalExp ((OutFile var), env, kon) | lookupEnv var env == [] = error ("run time error. variable " ++ var ++ " not found")
                                  | otherwise = ((Output var env), env, kon)

-- evaluate print
evalExp ((Print part_name canvas_name x_expr y_expr), env, kon) = ((Cl canvas_name env'), env', kon)
    where
        part_value = snd $ head $ (lookupEnv part_name env)
        -- part_value :: [String] ["111", "111", "111"]
        canvas_value = snd $ head $ (lookupEnv canvas_name env)
        -- canvas_value :: [String] ["00000", "00000", "00000", "00000", "00000"]
        x_value = fst $ evalCalc (x_expr, env)
        y_value = fst $ evalCalc (y_expr, env)
        env' = updateEnv env canvas_name (printTile canvas_value part_value (x_value, y_value))

-- evaluate reverse
evalExp ((Reverse var), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (reverseTile value)

-- evaluate rotate
evalExp ((Rotate var calc_expr), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (rotateTile value calc_expr env)

-- evaluate reflect x
evalExp ((ReflectX var), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (reflectXTile value)

-- evaluate reflect y
evalExp ((ReflectY var), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (reflectYTile value)

-- evaluate subtitle
evalExp ((Subtitle var_name x_expr y_expr multiplier_expr), env, kon) = ((Cl var_name env'), env', kon)
    where
        var_value = snd $ head $ (lookupEnv var_name env)
        x_value = fst $ evalCalc (x_expr, env)
        y_value = fst $ evalCalc (y_expr, env)
        multiplier_value = fst $ evalCalc (multiplier_expr, env)
        env' = updateEnv env var_name (subtitleTile var_value (x_expr, y_expr) multiplier_expr env)

-- evaluate scale
evalExp ((Scale var calc_expr), env, kon) = ((Cl var env'), env', kon)
    where
        value = snd $ head $ (lookupEnv var env)
        env' = updateEnv env var (scaleTile value calc_expr env)

-- evaluate tilecomb
evalExp ((TileComb var_name1 var_name2 dir), env, kon) = ((Cl var_name1 env'), env', kon)
    where
        value1 = snd $ head $ (lookupEnv var_name1 env)
        value2 = snd $ head $ (lookupEnv var_name2 env)
        env' = updateEnv env var_name1 (combTile value1 value2 dir)

-- evaluate tileand
evalExp ((TileAnd var_name1 var_name2), env, kon) = ((Cl var_name1 env'), env', kon)
    where
        value1 = snd $ head $ (lookupEnv var_name1 env)
        value2 = snd $ head $ (lookupEnv var_name2 env)
        env' = updateEnv env var_name1 (andTile value1 value2)

-- evaluate tileor
evalExp ((TileOr var_name1 var_name2), env, kon) = ((Cl var_name1 env'), env', kon)
    where
        value1 = snd $ head $ (lookupEnv var_name1 env)
        value2 = snd $ head $ (lookupEnv var_name2 env)
        env' = updateEnv env var_name1 (orTile value1 value2)

-- evaluate closure
evalExp ((Cl _ _), env, (FSeq exp):kon) = (exp, env, kon)
evalExp (a@(Cl _ _), env, kon) = (a, env, kon)

-- evaluate output
evalExp ((Output var env), env', kon) = ((Output var env), env', kon)

-- evaluate ; (StatSemi and StatSeq)
evalExp ((StatSemi exp), env, kon) = (exp, env, kon)
evalExp ((StatSeq exp1 exp2), env, kon) = (exp1, env, (FSeq exp2):kon)
-- evalExp (v, env, (FSeq exp):kon) | checkTerm v = (exp, env, kon)

---------------------------------
------- HELPER FUNCTIONS --------
---------------------------------
-- read tile file
readTile file_name =
    let tile_line = unsafePerformIO (readFile file_name) in 
    return $ map removeCR (lines tile_line)
    where
        removeCR l  | last l == '\r' = init l
                    | last l == '\n' = init l
                    | otherwise = l

escapeMonad a = head a
-- remove .tsl extension from file name
removeTslExt :: String -> String
removeTslExt fileName = (take (length fileName - 3)) fileName

-- REVERSE
reverseTile :: Tile -> Tile
reverseTile = map (map negate)
    where 
        negate '0' = '1'  
        negate '1' = '0'
        negate c = '0'

-- ROTATE
rotateTile :: Tile -> ExpCalc -> Env -> Tile
rotateTile tile deg_exp env
    | deg `mod` 90 /= 0 = error "invalid degree" 
    | deg `div` 90 `mod` 4 == 0 = tile
    | deg `div` 90 `mod` 4 == 1 = transpose tile
    | deg `div` 90 `mod` 4 == 2 = transpose $ transpose tile
    | deg `div` 90 `mod` 4 == 3 = transpose $ transpose $ transpose tile
        where
            deg = fst $ evalCalc(deg_exp, env)

-- SCALE
scaleTile :: Tile -> ExpCalc -> Env -> Tile
scaleTile tile n_exp env = concatMap (\s -> concat $ replicate n (replicate n s)) tile
    where 
        n = fst $ evalCalc(n_exp, env)

-- REFLECTX
reflectXTile :: Tile -> Tile
reflectXTile = reverse

-- REFLECTY
reflectYTile :: Tile -> Tile
reflectYTile = map reverse

-- CLONE
-- keyword clone use to clone one tile to another therefore just return the first tile itself
-- cloneTile :: Tile -> Tile
-- clone tile = tile

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
        zipRow :: String -> String -> String
        zipRow = zipWith(\c1 c2 -> if c1 == '1' && c2 == '1' then '1' else '0')

-- TILEOR
orTile :: Tile -> Tile -> Tile
orTile t1 t2 = zipWith zipRow t1 t2
    where
        zipRow :: String -> String -> String
        zipRow = zipWith(\c1 c2 -> if c1 == '1' || c2 == '1' then '1' else '0')

-- BLANK
blankTile :: Tile -> Tile
blankTile tile = replicate (length tile) (replicate (length $ head tile) '0')

-- TILECOMB
combTile :: Tile -> Tile -> String -> Tile
combTile t1 t2 dir
    | dir == "U" = t2 ++ t1
    | dir == "D" = t1 ++ t2
    | dir == "R" = zipWith (++) t1 t2
    | dir == "L" = zipWith (++) t2 t1
    | otherwise = error "Invalid Direction"


printTile :: Tile -> Tile -> (Int, Int) -> Tile
printTile tile1 tile2 (x,y) =
    let (top,bot) = splitAt y tile1
        (left,remain) = unzip $ map ( splitAt x) bot
    in top ++ left ++ (substitute remain tile2)
        where
            splitAt n ls 
                | n == 0 = ([],ls)
                | otherwise = 
                    let (ys, zs) = splitAt (n - 1) (tail ls)
                    in (head ls : ys, zs)
            substitute :: Tile -> Tile -> Tile
            substitute [] ys = ys
            substitute xs [] = xs
            substitute (x:xs) (y:ys) = (y ++ drop (length y) x) : substitute xs ys

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

-- evalCalcEnv (Get a) env = (read (snd $ head $ (lookupEnv a env)) :: Int, env)
-- evalCalc :: (ExpCalc, Env) -> (Int, Env)
-- evalCalc (expr, env) = case expr of
--     (Expo base exponent) -> ((fst $ evalCalc (base, env)) ^ (fst $ evalCalc (exponent, env)), env)
--     (Times a b) -> ((fst $ evalCalc a * (fst $ evalCalc b)), env)
--     (Div a  b) -> ((fst $ evalCalc a / (fst $ evalCalc b)), env)
--     (Minus a b) -> ((fst $ evalCalc a - (fst $ evalCalc b)), env)
--     (Plus a b) -> ((fst $ evalCalc a + (fst $ evalCalc b)), env)
--     (TileInt a) -> (a, env)
--     (Get a) -> ((read (snd $ head $ (lookupEnv a env)) :: Int), env)
evalCalc :: (ExpCalc, Env) -> (Int, Env)
evalCalc (expr, env) = case expr of
    (Expo base exponent) -> ((fst $ evalCalc (base, env)) ^ (fst $ evalCalc (exponent, env)), env)
    (Times a b) -> (((fst $ evalCalc (a, env)) * (fst $ evalCalc (b, env))), env)
    (Div a  b) -> (((fst $ evalCalc (a, env)) `div` (fst $ evalCalc (b, env))), env)
    (Minus a b) -> (((fst $ evalCalc (a, env)) - (fst $ evalCalc (b, env))), env)
    (Plus a b) -> (((fst $ evalCalc (a, env)) + (fst $ evalCalc (b, env))), env)
    (TileInt a) -> (a, env)
    (Get a) -> ((read (head $ snd $ head $ (lookupEnv a env)) :: Int), env)

-- unpackClosure :: Exp -> (Exp, Env)
-- unpackClosure (Cl var env) = (var, env)
-- unpackClosure e = (e, [])

updateEnv :: Env -> String -> [String] -> Env
updateEnv env varName value = (varName, value) : env
    -- | length $ (lookupEnv varName env) == 0 = [(varName, value)] : env
    -- | otherwise = ([(varName, exp)] : (filter (\(x, _) -> x /= varName) env))

-- check if a term is terminated
checkTerm :: Exp -> Bool
-- checkTerm (TileInt _) = True
-- checkTerm (TileTrue) = True
-- checkTerm (TileFalse) = True
checkTerm (OutFile _) = True
checkTerm (Output _ _) = True
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

-- parseExp (OutFile var, env) = snd $ length $ lookupEnv var env
parseOutput :: Exp -> [String]
parseOutput (Output var env) = snd $ head $ lookupEnv var env
parseOutput _ = ["Error: Unexpected line", "Last line of program should be OutFile"]
