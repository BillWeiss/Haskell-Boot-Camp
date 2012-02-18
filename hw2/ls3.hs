module Main where

import System.Environment
import System.Directory

onlyIfDirExists fn dir = do
    de <- doesDirectoryExist dir
    if ( not de )
        then putStrLn $ "Error: " ++ dir ++ " does not exist!\n"
        else fn dir

showDirContents dir = do
    putStrLn $ "Contents of " ++ dir ++ ":"
    f <- getDirectoryContents dir
    mapM_ putStrLn f
    putStrLn ""

main = do
    args <- getArgs
    mapM_ ( onlyIfDirExists showDirContents ) args
