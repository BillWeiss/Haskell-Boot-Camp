Haskell Boot Camp
=================

Episode 1
---------

Hi Bill. Let's get started.

Installing Haskell
------------------

This is actually pretty easy. [Go download and run the Haskell Platform installer.](http://hackage.haskell.org/platform/)Dead simple.

<p>Next, prove it works by installing hslint, like so:</p>

<pre><code>$ cabal update
install hlint</code></pre>

<p>A bunch of crap will happen, and when you're done, running <code>hlint</code> will give you a usage message. Easy.</p>

<p>If you think you're going to want a local copy of up-to-date documentation, edit your <code>~/.cabal/config</code> file and uncomment <code>documentation: True</code>. Reinstall hlint and see if <a href="file://localhost/Users/houdini/.cabal/share/doc/index.html">this documentation link works</a> (or one like it).</p>

<h2>Homework</h2>

<p>Email me your finished programs as you make them. Of course feel free to ask any questions that should arise while writing them.</p>

<ol>
	<li><p>Configure your editor to support Haskell syntax highlighting.</p></li>
	
	<li><p>Write, compile and run the hello world program.
	
	<pre><code>$ ./hello
Hello, world!
$</code></pre></p></li>

			<li><p>Write a program which prompts for a user's name and repeats it to the console.
			
			<pre><code>$ ./greetings
Enter your name: <b>Bill</b>
Hello, Bill!
$ </code></pre></p></li>

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
