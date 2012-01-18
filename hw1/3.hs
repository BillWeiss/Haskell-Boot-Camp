import System.IO

main = do hSetBuffering stdout NoBuffering
          putStr "Enter your name: "
          name <- getLine
          putStrLn $ "Hello, " ++ name ++ "!"
