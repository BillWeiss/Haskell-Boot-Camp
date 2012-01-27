module Main where

import System.Environment
import System.Directory

showDirContents x = do
    putStrLn $ "Contents of " ++ x ++ ":"
    f <- getDirectoryContents x
    mapM putStrLn f
    putStrLn ""

main = do
    args <- getArgs
    mapM showDirContents args
