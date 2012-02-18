module Main where

import System.Environment
import System.Directory

-- Argument order is a bit screwy because I'm not sure how to make mapM
-- insert args not at the end.  Dan will help here.
onlyIfDirExists fn dir = do
    de <- doesDirectoryExist dir
    if ( not de )
        then putStrLn $ "Error: " ++ dir ++ " does not exist!\n"
        else do fn dir

showDirContents dir = do
    putStrLn $ "Contents of " ++ dir ++ ":"
    f <- getDirectoryContents dir
    mapM putStrLn f
    putStrLn ""

main = do
    args <- getArgs
    -- yep, right here.  I'd prefer the call to be 
    -- onlyIfDirExists (directory) (function)
    -- how's that work?
    mapM ( onlyIfDirExists showDirContents ) args
