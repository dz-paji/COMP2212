import TileTokens
import TileGrammar
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = catch main' noParse

main' = do (fileName : _ ) <- getArgs 
           source <- readFile fileName
           putStrLn ("Parsing : " ++ source)
           let parsed = parseCalc (alexScanTokens source)
           putStrLn ("Parsed as " ++ (show parsed))

noParse :: ErrorCall -> IO ()
noParse e = do let err =  show e
               hPutStr stderr err
               return ()