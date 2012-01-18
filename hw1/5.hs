module Main where

import System.IO
import Control.Applicative

fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x-2)

main = do 
    hSetBuffering stdout NoBuffering
    putStr "Number to fib up: "
    num <- read <$> getLine
    putStr $ "fib(" ++ show num ++ ") = "
    print $ fib num
