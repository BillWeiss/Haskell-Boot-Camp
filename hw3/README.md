Episode 3
=========

Welcome back, Bill.

More on I/O
-----------

So last week’s (month’s) episode reveals that I/O is not obvious. This
week will be more practice with I/O, doing some fairly simple programs to
get a feel for the way they’re structured in Haskell.

Soundtrack
----------

This week's soundtrack provided courtesy of
[Ke$ha](http://www.vevo.com/artist/kesha). Yeah. Really.

Quote
-----

> monads are like containers, as long as you forget everything you know about containers, and treat it as a synonym for “monad”
> -- kmc

Homework
--------

1.  Reimplement Gob's Program:
    <iframe width="560" height="315" src="http://www.youtube.com/embed/JbnjusltDHk" frameborder="0" allowfullscreen></iframe>

1.  Reimplement John Shipman's obnoxious quadratic equation solver. Handle
    NaN and infinity properly. Make sure your program can handle an arbitrary
    number of requests, one per line.

1.  Using the following code snippet, finish hw4 from Boot Camp 2:

        import Data.Bits
        import Data.List
        import Data.Maybe
        import System.Posix.Files

        fileType :: FileStatus -> Char
        fileType stat = snd $ fromJust $ find (\(f, _) -> f stat) fileTypes
          where
            fileTypes = [ (isRegularFile,     '-')
                        , (isDirectory,       'd')
                        , (isSymbolicLink,    'l')
                        , (isCharacterDevice, 'c')
                        , (isNamedPipe,       'p')
                        , (isBlockDevice,     'b')
                        , (isSocket,          's') ]

        expandPermissions :: FileStatus -> String
        expandPermissions stat = fileType stat : zipWith charFor flagsSet "rwxrwxrwx"
          where
            -- if the bit is set, take the character; otherwise, use '-'
            charFor True c = c
            charFor _    _ = '-'

            -- we're interested in the "standard" permissions
            mode           = accessModes `intersectFileModes` (fileMode stat)
            
            -- get booleans instead of the integral type
            flagsSet       = bitsToBools mode
            
        -- generate the list of booleans, then reverse to get the expected order
        bitsToBools :: (Bits a) => a -> [Bool]
        bitsToBools bits = reverse $ unfoldr step bits
          where
            -- unfolding function: while we are greater than zero, shift off a bit
            step 0         = Nothing
            step n         = Just $ (n `testBit` 0, n `shift` (-1))

1.  One way to learn a passage of text well is by reading it normally
    once, and then repeating it aloud looking at just the first letter of each
    word. Implement this in Haskell. Here's an example run:

        7gf% cat nethes.txt
        In the rooms of houses and beyond their walls... 
        beneath dark waters and across moonlit skies... 
        below earth mound and above mountain peak... 
        in northern leaf and southern flower... 
        inside each star and the voids between them... 
        within blood and bone, through all souls and spirits... 
        among the watchful winds of this and the several worlds... 
        behind the faces of the living and the dead...

        7gf% ./decapitate < nethes.txt
        I t r o h a b t w... 
        b d w a a m s... 
        b e m a a m p... 
        i n l a s f... 
        i e s a t v b t... 
        w b a b, t a s a s... 
        a t w w o t a t s w... 
        b t f o t l a t d...

1.  Implement [Bulls and Cows](http://en.wikipedia.org/wiki/Bulls_and_Cows) on
    the console. Example usage:

        7gf% ./bullscows 
        Bulls and cows, 4 digits.
        Enter your guess at the prompt.
        A bull is a correct digit in the right location;
        a cow is a correct digit in the wrong location.
        ?> 1234
        1 bulls, 2 cows
        ?> 5678
        0 bulls, 1 cows
        ?> 1256
        1 bulls, 1 cows
        ?> 7834
        0 bulls, 2 cows
        ?> 9078
        0 bulls, 0 cows
        ?> 9243
        2 bulls, 1 cows
        ?> 5907
        0 bulls, 0 cows
        ?> 6907
        0 bulls, 1 cows
        ?> 6324
        0 bulls, 4 cows
        ?> 3246
        1 bulls, 3 cows
        ?> 3264
        2 bulls, 2 cows
        ?> 4263
        You won!

Parts and pieces you may want to know about:

* [interact](http://www.haskell.org/ghc/docs/latest/html/libraries/base/Prelude.html#v:interact)
* [View patterns](http://hackage.haskell.org/trac/ghc/wiki/ViewPatterns)
* [Data.Maybe](http://www.haskell.org/ghc/docs/latest/html/libraries/base/Data-Maybe.html)

