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
    install hlint

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

			<li><p>Write a function that calculates the nth fibonacci number.
			
			<pre><code>Prelude> fib 10
55
Prelude> </code></pre></p></li>

			<li><p>Write a program that prompts the user for N, and then writes the Nth fibonacci number to the console.</p>
			
			<pre><code>$ ./fib
Which fibonacci number would you like to see? <b>10</b>
fib 10 = 55
$ </code></pre></li>
		</ol>
		
		<p>OK, go get started. If you get stuck, read on.</p>
		
		<h2>Soundtrack</h2>
		
		<p>This week's soundtrack is courtesy of <a href="http://www.vevo.com/artist/awolnation">AWOLNATION</a>.</p>
		
		<h2>Quote</h2>
		
		<blockquote>Haskell is faster than C++, more concise than Perl, more regular than Python, more flexible than Ruby, more typeful than C#, more robust than Java, and has absolutely nothing in common with PHP.</blockquote>

		<p>— Autrijus Tang</p>

    <p></p>
		
		<h2>Notes</h2>
		
		<p>Monads. We're not going to talk about them for a while. Let's get a feel for the language first.</p>

		<p>Parts and pieces you may want/need:</p>
		
		<ul>
			<li><code>($)</code></li>
			<li><code>System.IO</code></li>
			<li><code>putStrLn</code></li>
			<li><code>getLine</code></li>
			<li><code>hSetBuffering</code></li>
			<li><code>show</code></li>
			<li><code>read</code></li>
			<li><code>ghc --make</code></li>
			<li><code>ghci</code></li>
			<li><code>:l</code></li>
			<li><code>:r</code></li>
			<li><code>:t</code></li>
			<li><a href="http://www.haskell.org/ghc/docs/7.0.4/html/libraries/">HHL documentation</a></li>
			<li><a href="http://www.haskell.org/hoogle/">Hoogle</a></li>
		</ul>
	</body>
</html>
