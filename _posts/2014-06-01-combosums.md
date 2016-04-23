---
layout: post
title: Recursion and Combination Sums
date: 2014-06-01 
---

Developer, fellow Duke alum, Flatiron School graduate and good friend Sam Schlinkert recently posted a [great piece](http://sts10.github.io/blog/2014/05/30/strike-9-game/) on his blog about developing the old game Strike 9 in JavaScript. I highly recommend reading it before this post. Additionally, Sam's blog in general has been one of my most helpful learning resources as I develop as a programmer.

One of the issues Sam encountered in developing Strike 9 was writing a function that returned all possible combinations of numbers summing to any given number below 12 inclusive (e.g. passing in 5 as an argument should return [1,4], [2,3],and [5] - note that in the game the player only gets one of each digit 1-12 to work with, so [1,2,2] is not possible, while [4,1] and [3,2] are irrelevant as order matters not in this game). As detailed in his blog post, he eventually developed several separate functions, one of which was recursive, in order to deal with the issue. 

I thought it would be instructive to try to solve the problem in one function without recursion (technically, I solved in two but one is just to bypass JS' inability to deal with checking for array equality). You can see [my full solution](https://gist.github.com/BenBrostoff/15e9c1f20bade7bfebea) here and the gist (no pun intended) of the solution below:

<script src="https://gist.github.com/BenBrostoff/c53c0a6b8113f45e6961.js"></script>

It was apparent to me upon writing this code how repetitive it was. The two nested if / for loops after line 5 are nearly identical. Additionally, I stop nesting loops when a combination is four digits long, so my function won't list all combinations for a number larger than or equal to 15 (1+2+3+4+5).

In situations like these, recursion would seem to be the best option, and that's exactly what Sam used to write his solution.

Sam replaced everything after line 5 with a recursive function called `addAllSubSums` (note the function calls on several other "helper" functions which I won't cover in detail here). The function takes two integer arguments - `baggage` and `sum` - that sum up to the `sum` argument in `getPossSums`. Among other things, the brilliance of Sam's method is that it works for any argument (although one of the drawbacks of recursion is that it solves in an exponentially large amount of time as you continue to recurse, meaning `getPossSums(100)` will crash your machine). Because `addAllSubSums` recurses to a base case wherein a sum has been broken down into its smallest single digit integer components, the method works on any number irrespective of size. 

I've shown Sam's methods below (again, full credit to him, and this code is purely his work product) and commented out relevant sections with an example:

<script src="https://gist.github.com/BenBrostoff/1fa29a98162dab61937a.js"></script>

Only experience can really bear out some of the advantages to be had from using certain concepts in computer science, and I found recursion here woke me up to the following:

* The use of a base case to end recursive calls is the heart and soul of recursion. In this example, we stopped recursing only when `baggage` in `addAllSubSums` contained specific elements, which in turn allowed us to break out of a for loop
* The best way to understand recursion (at least for me) is to visually write out examples - I found assuming 10 as the argument for sum and then commenting out the rest of the code gave me a significantly better understanding of the code
* Recursion allows one to write significantly shorter code (compare my initial solution to Sam's)
* Recursion takes up an exponentially increasing amount of memory as you recurse within a function (again, try `getPossSums(100)`).

As a side note, it's fun / a bit weird to play [Sam's demo of Strike 9](http://samschlinkert.com/strike9/) now that I understand a bit more of the code behind it. We rarely take the time to appreciate the hard work and cleverness of game designers.  



  


