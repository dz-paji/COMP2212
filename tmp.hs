import System.IO.Unsafe (unsafePerformIO)
readTile file_name =
    let tile_line = unsafePerformIO(readFile file_name) in
    return $ map removeCR (lines tile_line)
    where
        removeCR l | last l == '\r' = init l
                     | last l == '\n' = init l
                     | otherwise = l

readFirst a = head a
