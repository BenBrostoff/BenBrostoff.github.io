---
layout: post
title: Introduction to Ruby Classes
disqus: y
date: 2014-05-04 
---

<p>Classes to a degree are hallmarks of object oriented programming. Classes serve as templates for creating objects, and the purpose of classes in Ruby is no exception. I am relatively new to Ruby and this post will serve as a basic introduction to creating classes.</p>

<p>Below is a short class I wrote for the purpose of tracking information on NBA players. Using the class, entitled NBAPlayer (classes are always capitalized, per Ruby convention) you can create <b>instances</b> of NBA Players, with the respective information attributes of each instance known as <b>instance variables</b>. Methods within the class can take arguments or have no arguments; their purpose can be to display information, manipulate instance variables or do any other number of different functions.</p>

<p>I have provided comments in the code below, but a few initial thoughts: </p>

<ul>
<li>The class variable (prefaced by @@) no_players can be accessed by any method in the class and is the same for all instances of the class. Take a look at the dirk and pierce objects that follow in the code - once pierce is created, no_players is 2 for both pierce and dirk.</li>
<li>Initialize is an instance method which creates our instance variables, assigning them the values given when the object is created. Initialize also adds one to no_players, which forms the basis of the current_player_count method.</li>
<li>The remaining methods are class methods which output values based on (in some cases) arguments that are passed in or manipulation of the instance variables.</li>
</ul>

<script src="https://gist.github.com/BenBrostoff/3d6c87563acb45f4bae2.js"></script>

<p>Running this code outputs the following to the console. </p>

<ul>
<li>Dirk Nowitzki is 36 years old.</li> 
<li>Our state of the art program recommends that Dirk Nowitzki start at C.</li> 
<li>Dirk Nowitzki is in the right position.</li>
<li>Dirk Nowitzki is one of 1 object(s) created using this program.</li> 
<li>Paul Pierce is 37 years old.</li> 
<li>Our state of the art program recommends that Paul Pierce start at PF.</li> 
<li>Paul Pierce is currently out of position.</li>
<li>Paul Pierce is one of 2 object(s) created using this program.</li> 
</ul> 

<p>One can in part see from this example the inherent usefulness of a class. Classes (which are objects of the class Class, by the way, in Ruby) provide a means of giving objects utility from a programming perspective: the class an object is in determines the methods you can call, the information about that object, etc. Classes are also objects, as previously stated. In future posts, I intend to explore more principles of object oriented programming and the role of classes in OOP. </p>

