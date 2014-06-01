---
layout: post
title: Ruby Hash - Class Review
date: 2014-05-30 
---

Michael Hartl's [Rails tutorial](http://www.railstutorial.org/) notes in several places that hashes - specifically hashes within hashes - are a critical part of Rails. As such, I thought it would be nice prior to my 6/2 Dev Bootcamp start date to review the `Hash` class. Official documentation is [linked here](http://www.ruby-doc.org/core-2.1.2/Hash.html) for reference 

Hashes have significant advantages over arrays and are better for tasks where order would be a nuisance. Hashes use key-value pairs as opposed to ordered slots; this feature makes hashes perfect for frequency tables, user attribute tracking, etc. 

Unlike an array, a hash's keys can be any type of object, whereas with an array, the indices can only be integers. While hash syntax can differ, I'm most used to seeing the folowing:

<script src="https://gist.github.com/BenBrostoff/918322d43d7f0215d88f.js"></script>

In the above, `users` `keys` are `symbols`, while the `values` are two `Strings` and an `Integer`. Much like with an array and an index, returning a value from a hash is as simple as putting its respective key in square brackets. In the Hartl Rails tutorial, it's often the case that methods accept hashes as arguments and set instance variables to values within the hash.

Conversely, one can use the method `key` with a `value` argument to return the key that contains the argument. The `keys` method can also return all the keys in a hash. An example follows below:

<script src="https://gist.github.com/BenBrostoff/d405ef95536183f7371c.js"></script>


Hashes can also be created without specifying keys or values in advance (comparable to pushing values into an array). Below, I've shown how one would use hashes in Ruby to create a `frequency_table` and `mode` method:

<script src="https://gist.github.com/BenBrostoff/ff0ae2a11a311238dc93.js"></script>

The `Hash` class contains 146 instance methods. Note that many of these methods are just part of the Hash class inheriting from Object (ex. .equal?, instance_variables?, etc.).  

I want to focus on three I find particularly interesting and useful: `merge` (useful for combining hashes), `delete_if` (useful for filtering key value pairs through hashes) and `values_at` (useful for getting values at a given key). 

`merge` I've seen quite often in reviewing Ruby code. Although I personally haven't used it very often, the value of merge is apparent from the name - one can combine two or more separate hashes:

<script src="https://gist.github.com/BenBrostoff/d5a3f2265cb30956f346.js"></script>

`delete_if` is one of those methods perfect for chopping down key value pairs in a hash based on specific criteria. One can imagine all the scenarios this would be useful for in a programming context - for instance, pairing down a large hash with useless user attributes:

<script src="https://gist.github.com/BenBrostoff/4bc1e2e7edfd2c413e06.js"></script>

Finally, `values_at` is a means of getting all values at a specific key. In situations where hashes are stored within hashes, I could see this method being useful. Consider the example of a hash where users are keys and the values are hashes with their information: 

<script src="https://gist.github.com/BenBrostoff/b5602d0470e8f9c6fa0c.js"></script>

I will continue revisiting the `Hash` documentation as I program in Ruby. Please feel free to shoot me an e-mail if there are any methods you use quite often that it would be useful to review in further detail. 








