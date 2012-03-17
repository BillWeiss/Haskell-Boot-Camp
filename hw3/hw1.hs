module Main where

import System.IO
import Control.Monad
import Data.Char

gobsFunction 'y' = forever $ putStr "Penus "
--- There wasn't really a spec for what to do if the input wasn't "y"
gobsFunction _ = putStrLn "Dunno"

main = do
    hSetBuffering stdout NoBuffering
    putStrLn "Gob's Program: Y/N?"
    putStr "? "
    input <- getChar
    gobsFunction $ toLower input
