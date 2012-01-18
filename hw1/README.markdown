Haskell Boot Camp
=================

Episode 1
---------

Hi Bill. Let's get started.

Installing Haskell
------------------

This is actually pretty easy. [Go download and run the Haskell Platform installer.](http://hackage.haskell.org/platform/)Dead simple.

Next, prove it works by installing hslint, like so:

    $ cabal update
    $ cabal install hlint

A bunch of crap will happen, and when you're done, running `hlint` will give you a usage message. Easy.

If you think you're going to want a local copy of up-to-date documentation, edit your `~/.cabal/config` file and uncomment `documentation: True`. Reinstall hlint and see if [this documentation link works](file://localhost/Users/houdini/.cabal/share/doc/index.html) (or one like it).

Homework
--------

Email me your finished programs as you make them. Of course feel free to ask any questions that should arise while writing them.

1. Configure your editor to support Haskell syntax highlighting.
2. Write, compile and run the hello world program.

        $ ./hello
        Hello, world!
        $

3. Write a program which prompts for a user's name and repeats it to the console.

        $ ./greetings
        Enter your name: Bill
        Hello, Bill!
        $

4. Write a function that calculates the nth fibonacci number.
			
        Prelude> fib 10
        55
        Prelude>

5. Write a program that prompts the user for N, and then writes the Nth fibonacci number to the console.
			
        $ ./fib
        Which fibonacci number would you like to see? 10
        fib 10 = 55
        $
		
OK, go get started. If you get stuck, read on.
		
Soundtrack
----------

This week's soundtrack is courtesy of [AWOLNATION](http://www.vevo.com/artist/awolnation)

Quote
-----

> Haskell is faster than C++, more concise than Perl, more regular than Python, more flexible than Ruby, more typeful than C#, more robust than Java, and has absolutely nothing in common with PHP.

— Autrijus Tang

Notes
-----

Monads. We're not going to talk about them for a while. Let's get a feel for the language first.

Parts and pieces you may want/need:

* `($)`
* `System.IO`
* `putStrLn`
* `getLine`
* `hSetBuffering`
* `show`
* `read`
* `ghc --make`
* `ghci`
* `:l`
* `:r`
* `:t`
* [HHL documentation](http://www.haskell.org/ghc/docs/7.0.4/html/libraries/)
* [Hoogle](http://www.haskell.org/hoogle/)

