module Eval where import TileGrammar

-- evalExp, evaluates an exp
-- TODO: standardize the return type of evalExp
evalExp expr = case expr of
    (CreateCanvas var calc_expr) -> n
    (Load var) -> (var, var)
    (Reverse var) -> reverse var
    (Rotate var calc_expr) -> rotateTile var calc_expr
    (Blank var) -> (var, []) -- 这又是干啥的来着
    (Scale var calc_expr) -> scaleTile var calc_expr
    (Print var calc_expr calc_expr) -> var -- 这是干啥的来着
    (Subtitle var_a var_b) -> var -- 这是干啥的来着
    (IfThen bool_expr then_expr) -> evalIfThen (evalBoolExpr bool_expr) then_expr
    (IfElse bool_expr then_expr else_expr) -> evalIfElse (evalBoolExpr bool_expr) then_expr else_expr
    (Let var calc_expr) -> var

-- TODO: implement rotateTile
rotateTile :: Exp -> CalcExpr -> Tile
rotateTile _ _ = []

-- TODO: implement scaleTile
scaleTile :: Tile -> CalcExpr -> Tile
scaleTile _ _ = []

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
evalBoolExpr (IsGreater expr_a expr_b) = evalBoolExpr expr_a > evalBoolExpr expr_b
evalBoolExpr TileTrue = True
evalBoolExpr TileFalse = False

evalCalc :: CalcExpr -> TileInt
evalCalc expr = case expr of
    (Expo base exponent) -> (base ^ this)
    (Times a b) -> (a * b)
    (Div a  b) -> (a / b)
    (Minus a b) -> (a - b)
    (Plus a b) -> (a + b)
    (MinusOne a) -> (a - 1)
    (PlusOne a) -> (a + 1)
    (Int a) -> a
    (Get a) -> (show a)
