module Main where

import System.IO
import Control.Applicative

gobsFunction "y" = do
    putStr "Penus "
    gobsFunction "y"
gobsFunction x = putStrLn "I don't know what to do with " ++ x

main = do
    hSetBuffering stdout NoBuffering
    putStrLn "Gob's Program: Y/N?"
    putStr "? "
    input <- read <$> getLine
    gobsFunction input
