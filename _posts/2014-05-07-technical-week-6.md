---
layout: post
title: OOP v. Functional Programming
date: 2014-05-07 12:00:00
---
<p class = "blogpost">The main difficulty in describing the difference between object oriented and functional programming is that each of the two "types" of programs are, at best, vaguely defined.</p>

<p class = "blogpost">Indeed, it seems to me that anecdotally, the concept of functional programming is significantly misunderstood by the general programming community, and <a href="https://twitter.com/quackingduck" target="_blank"> Myles Byrne </a> in a lecture from late April stressed this point repeatedly. From Byrne's perspective, the two largest misunderstandings of functional programming are that (i) functional programming is about passing functions into other functions and (ii) functional programming is about lambdas (a misconception perhaps created by its <a href="http://en.wikipedia.org/wiki/Functional_programming" target="_blank"> Wikipedia page</a>.)</p>

Byrne spoke extensively about statelessness and immutability being at the heart of functional programming. The state of a "functional" program at any given time will not impact its output; objects in functional programming are a [sequence of immutable values](http://stackoverflow.com/questions/353912/functional-programming-state-vs-reassignment). A function's output is only dependent on its input (i.e. calling the function does not affect state), and thus functional code by some commentators is considered easier to read than OOP code or other programming styles' code, since the reader need not keep track of state.

In contrast, programs in the OOP style are not stateless and objects exist as instances of classes rather than a sequence of immutable values. "Stateful" expressions are part of OOP - functions can change objects. Functions in OOP (can) change the state of the program: this outcome is not acceptable in functional programming.

<p class = "blogpost">Additionally, a hallmark of functional programming is that it does not introduce "side effects". What is meant here is that passing the same argument into a given function will produce the same output each time. There are no side effects to calling on a function: the same input always leads to the same output. </p>

<p class = "blogpost">In the below, I've tried to demonstrate a "pure" functional programming function in JavaScript in comparison to "non-pure" function (I chose JavaScript because the consensus thinking seems to be that this language can be adopted as a "part" functional programming language - I did not find through my research the same enthusiasm for Ruby as a functional programming language, although this may just be due to the widespread use of JavaScript compared to Ruby to begin with). The major difference is that the pure function does not change the value of any variables.</p>

<script src="https://gist.github.com/BenBrostoff/3b00f0e3d712a7402765.js"></script>

<p class = "blogpost"> My experience in OOP (full disclosure: I have never coded in a functional programming style) is that there are scenarios wherein you want your functions to produce side effects. </p>

<p class = "blogpost"> Consider the case of a class that has a method keeping track of objects created within the class. This function (method if we're discussing Ruby) will produce different results each time a new object is created. Additionally, the class variable is being mutated each time the function is called, meaning the method is effectively changing the state of the program. I've tried to demonstrate this concept in the example below. </p> 

<script src="https://gist.github.com/BenBrostoff/698f0ed90b2e1164a4f7.js"></script>

<p class = "blogpost"> I would be amiss without mentioning that functional programming relies on a number of other practices I will not go into detail on here, as this post is meant to be fairly high-level. However, to become a proficient functional programmer, it seems to me one must (and I say must because these are often the only ways of maintaining immutability and statelessness) use first class / higher order functins, recursion over for / while loops and closures. I found Stephen Young's blog post to be an excellent primer on these concepts <a href="http://stephen-young.me.uk/2013/01/20/functional-programming-with-javascript.html"> and have linked it here </a>.</p>

Finally, just as there are widely heralded OOP languages (Ruby, Python, Java - note that Python and Java also fall into other camps), functional programming has its favored languages for getting the job done. Haskell, Hope, and Lisp are some of the notable ones. Although by no means a reliable source, [this Wikipedia entry](http://en.wikipedia.org/wiki/List_of_programming_languages_by_type#Object-oriented_class-based_languages) attempts to sort major programming languages by camp.

<p class = "blogpost"> One would think this post should naturally conclude with some "which style is better" commentary. I profess not to have a good answer here because I have zero experience with functional programming, and even those with significant experience in functional programming are unsure.</p>

<p class = "blogpost">Based on my research, it seems the major drawback of functional programming is that it takes significant displine to write in this style, especially in languages that aren't pure "functional" languages at heart. Many of the write-ups I read on functional programming in JavaScript showed functional and non-functional code snippets. Functional programming is in most languages a choice, and often it's a harder choice depending on the programmer's tendencies. For instance, the idea of using recursion over loops all the time may simply not be pragmatic for a programmer under time constraints (alternatively, it could be the fastest way to solve a problem).</p>

<p class = "blogpost">The main advantage functional programming has over OOP in my opinion is that it's easier to read code in this style. Because a functional program is both stateless and its variables immutable, the reader of the code does not face moving targets in the same way he or she would reading code in the OOP mode. In terms of maintainability and testing, it would seem to me that functional code wins over OO code every time. This advantage only widens when one considers how difficult it can be to read OO code if the program contains mutliple class dependencies and is not well structured in the <a href = "http://www.amazon.com/Practical-Object-Oriented-Design-Ruby-Addison-Wesley/dp/0321721330"> Sandi Metz / POODR sense.</a> </p>

<p class = "blogpost">Yet, OOP's popularity over functional programming at present means that a coder well trained in OOP principles will have a large group of friends to work with (to be clear, popularity is, of course, largely overrated). Combined with the fact that a functional programming approach to a problem may not be the quickest way to solve the problem, I could foresee many scenarios where OOP is preferable to functional programming.</p>

<p class = "blogpost">I'd venture to guess that both will play a large role in the future of programming styles. </p>