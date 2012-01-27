module Main where

import System.Directory
import Control.Applicative

main = do
    f <- getDirectoryContents "."
    mapM_ putStrLn f
