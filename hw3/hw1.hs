module Main where

import System.IO
import Control.Monad
import Control.Applicative

main = do
    hSetBuffering stdout NoBuffering
    putStrLn "Gob's Program: Y/N?"
    putStr "? "
    input <- getChar
    when (input == 'y') $ forever putStr "Penus "

