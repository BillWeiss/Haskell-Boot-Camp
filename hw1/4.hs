module Main where

import System.IO

fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x-2)

main = do 
    hSetBuffering stdout NoBuffering
    putStr "Number to fib up: "
    num <- getLine
    let num' = read num
    putStr $ "fib(" ++ num ++ ") = "
    print $ fib num'
