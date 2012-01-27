Episode 2
=========

Welcome back, Bill.

Conditional Computation
-----------------------

Dealing with pure values, you can use the `if` syntax:

    if boolean-expression
      then then-case-value
      else else-case-value

Dealing with monadic code, you can either refactor to deal with pure values or achieve monadic conditional computation with guards such as `when`:

    main = do
      when boolean-expression monadic-action

Note that in this case, you're really passing a monadic action to a function that chooses whether or not to evaluate it. This is not syntax.

Iteration
---------

Most of the time in Haskell, you will be dealing with lists or their ilk and your best option will be a functional combinator such as `fmap` or `filter`, or a more general list comprehension. For example:

    Prelude> x = map (**2) [1..10]
    Prelude> y = [ x**2 | x <- [1..10] ]

This is not helpful for repeating monadic actions, you wind up with a list of actions rather than a bunch of things having been done:

    Prelude> :t map (putStrLn . show) [1..10]
    map (putStrLn . show) [1..10] :: [IO ()] -- not useful

There are solutions though. The easiest one is to use `mapM` and relative `mapM_`:

    Prelude> mapM_ (putStrLn . show) [1..10]
    1
    2
    3
    ...
    10
    Prelude>

You can convert procedural iteration patterns to Haskell either by emulating with recursion or by generating sequences and using map/filter. In many cases there will be a combinator that expresses the iteration you're trying to achieve. Consult the documentation.

Soundtrack
----------
This week's soundtrack provided courtesy of Foster the People.

Quote
-----

>this language is like having programming super powers
>— noggle

Homework
--------
Write a program to output a directory listing for the current directory.

    $ ./ls1
    .
    ..
    ls1.hs
    ls1.hi
    ls1.o
    ls1
    $ 

Modify the previous program to output a directory listing for each path supplied on the command line.

    $ ./ls2 . /tmp
    Contents of .:
    .
    ..
    ls2.hs
    ls2.hi
    ls2.o
    ls2
    
    Contents of /tmp:
    .
    ..
    aoeu.txt
    
    $ 

Modify the previous program to gracefully handle non-existent paths.

    $ ./ls3 nowhere-real
    Error: nowhere-real does not exist!
    
    $ 

Modify the previous program to handle a "-l" option for displaying more information:

     $ ./ls4 -l .
    -rwxr-xr-x  1 fusion  wheel  782934 Jan 13 13:02 ls4
    -rw-r--r--  1 fusion  wheel     718 Jan 13 13:02 ls4.hi
    -rw-r--r--  1 fusion  wheel     119 Jan 13 13:02 ls4.hs
    -rw-r--r--  1 fusion  wheel    3024 Jan 13 13:02 ls4.o
    
    $ 

Notes
-----
We'll discuss form and functionality when we review your exercises. Don't stress too much about them. Any polish you wish to apply will of course be appreciated.

Parts and pieces you may want to know about:

* unfoldr
* fromJust, maybe
* Data.Bits
* formatTime
* System.Directory
* System.Posix.Files
* System.Posix.User
* System.Environment
* Text.Printf

