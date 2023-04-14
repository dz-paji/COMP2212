module Eval where import TileGrammar

-- evalExp, evaluates an exp
-- TODO: standardize the return type of evalExp
evalExp expr = case expr of
    (CreateCanvas var calc_expr) -> n
    (Load TileVar var) -> (var, var)
    (Reverse TileVar var) -> reverse var
    (Rotate TileVar var calc_expr) -> rotateTile var calc_expr
    (Blank TileVar var) -> (var, []) -- 这又是干啥的来着
    (Scale TileVar var calc_expr) -> scaleTile var calc_expr
    (Print TileVar var calc_expr calc_expr) -> var -- 这是干啥的来着
    (Subtitle TileVar var TileVar var) -> var -- 这是干啥的来着
    (IfThen bool_expr then_expr) -> evalIfThen (evalBoolExpr bool_expr) then_expr
    (IfElse bool_expr then_expr else_expr) -> evalIfElse (evalBoolExpr bool_expr) then_expr else_expr
    (Let TileVar var calc_expr) -> var

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
evalBoolExpr True = True
evalBoolExpr False = False

evalCalc :: CalcExpr -> TileInt
evalCalc expr = case expr of
    (Expo TileInt this) -> ^ this
    (Times TileInt a b) -> TileInt (a * b)
    (Div TileInt a TileInt b) -> TileInt (a / b)
    (Minus TileInt a TileInt b) -> TileInt (a - b)
    (Plus TileInt a TileInt b) -> TileInt (a + b)
    (MinusOne TileInt a) -> TileInt (a - 1)
    (PlusOne TileInt a) -> TileInt (a + 1)
