-- I found putStr, but it doesn't print until after I enter something.
-- So, dunno how to do this without the extra line.
main = do putStrLn "Enter your name: "
          name <- getLine
          putStrLn ("Hello, " ++ name ++ "!")
