import TileTokens
import System.IO
import System.Environment

main :: IO()
main = do {(file : _ ) <- getArgs
            ; source <- readFile file
            ; let lexedTokens = alexScanTokens source
            ; putStrLn(show $ lexedTokens)}