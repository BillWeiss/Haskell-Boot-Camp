module Main where

import System.Environment
import System.Directory

showDirContents x = do
    de <- doesDirectoryExist x
    if ( not de )
        then ( putStrLn $ "Error: " ++ x ++ " does not exist!\n" )
        else do
            putStrLn $ "Contents of " ++ x ++ ":"
            f <- getDirectoryContents x
            mapM putStrLn f
            putStrLn ""

main = do
    args <- getArgs
    mapM showDirContents args
