import TileTokens
import TileGrammar
import Eval
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noParse

main' = do {(fileName : _ ) <- getArgs 
           ; source <- readFile fileName
           ; putStrLn ("Parsing : " ++ source)
           ; let parsed = parseCalc (alexScanTokens source)
        --    let parsed =  alexScanTokens source
           ; putStrLn ("Parsed as " ++ (show parsed))
           ; let result = letsEval parsed
           ; putStrLn ("Result = ")
           ; mapM_ putStrLn ( parseOutput result)}

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()