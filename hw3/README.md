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

