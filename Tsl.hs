import TileTokens
import TileGrammar
import Eval
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' errorHandler

main' = do {(fileName : _ ) <- getArgs 
           ; source <- readFile fileName
           ; let parsed = parseCalc (alexScanTokens source)
           ; let result = letsEval parsed
           ; mapM_ putStrLn ( parseOutput result)}

errorHandler :: ErrorCall -> IO ()
errorHandler e = do let err =  show e
                    hPutStr stderr err
                    return ()