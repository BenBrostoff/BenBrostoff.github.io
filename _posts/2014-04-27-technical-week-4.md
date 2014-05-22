---
layout: post
title: Enumerable #map
date: 2014-04-27 
---

<p>Enumerables is a Ruby module that contains various methods for use in arrays. I find map particularly useful, as it's the easiest way (in my opinion) to modify all elements of an array with a "universal" rule. In the example below, I take an array of numbers and add one to each element. I show map in its destructive (map!) and non-destructive forms as well. </p>


<script src="https://gist.github.com/BenBrostoff/11351284.js"></script>

<p> Predictably, because Enumerables was built for arrays, changing keys or values in a hash is not as easy via the map method. Using the map method on a hash will yield an array. </p>

<script src="https://gist.github.com/BenBrostoff/11351423.js"></script>

<p> I personally don't have many instances where I need to do that, so I would rather use the each method. </p>

<script src="https://gist.github.com/BenBrostoff/11351368.js"></script>

<p class = "blogpost"> Others have encountered this issue before in Ruby, and it's covered in some detail via <a href="http://stackoverflow.com/questions/812541/ruby-change-each-value-in-a-hash-with-something-like-collect-for-arrays" target="_blank"> this S/O post </a>. As per usual, there are many ways to do certain tasks in Ruby, and it's largely personal preference how you do them.</p>

