---
layout: post
title: The Rise of JavaScript
date: 2014-04-20 
---

<blockquote class = "blogpost"> JavaScript became the world's biggest programming language completely independent of its merits. 

<p><center> -Douglas Crockford, <a href="https://www.youtube.com/watch?v=hQVTIJBZook" target="_blank">Javascript: The Good Parts</a></center></p>

</blockquote>

<p>I want to preface my thoughts on JavaScript by acknowledging many of the criticisms against JavaScript. A common answer to this question may be that JavaScript is a "lowest common denominator" type programming language that a lot of programmers just by convention learn and become comfortable using for web development.  </p>

<p> As of the writing of this post, my coding experience was limited to a few CS classes at college and my time at DBC (about a month). I coded in Java at Duke and at DBC have used Ruby and JavaScript. I must admit I like Ruby far more than JavaScript. There are a couple things specifically that bother me about JavaScript: </p>

<ul> <b> Local and global variable consequences. </b> It often feels in JavaScript that the placement of variables and assignment of values has enormous consequences when creating objects. When debugging my own code, I've found moving things around often solves problems. In Ruby, placement is not as integral (and I make these statements as someone new to programming who is prone to make sweeping and unfounded statements). Placing variables within functions "feels" less consequential in Ruby than in JavaScript. </ul>

<ul> <b> Line termination and semi-colons. </b>  I'm still adjusting to semi-colon placement in JavaScript and the consequences of semi-colons. Why in for loops are the parameters separated by semi-colons, but object properties are separated by commas? A few google searches reveal some frustration with semi-colon treatment in JavaScript, specifically automatic parsing of semi-colons. Due to the lack of semi-colon equivalent in Ruby, JavaScript has thrown me for a bit of a (proverbial) loop here (although I did encounter semi-colons back in my Java days). Crockford (see earlier quote) notes,<a href="http://www.crockford.com/javascript/javascript.html" target="_blank"> "Semi-colon insertion was a huge mistake."</a></ul>

<p> So why is JavaScript popular? Let's cover the historical element before praising the positive attributes of the language (which the aforementioned Douglas Crockford has also done in the video linked above). Javascript is the product of the Netscape team that developed Netscape Navigator and designed the language to run on Netscape. The success of Netscape was a boon for Javascript. Netscape was the go-to broweser for early web users, and thus, Javascript was the earliest web language. First to market appears to have been a signicant win for JavaScript that buoyed it. </p>

<p>This is not to say JavaScript's success is purely right place right time, <a href="http://programmers.stackexchange.com/questions/28947/how-did-javascript-become-popular" target="_blank"> and this online thread relays this message home quite well.</a> JavaScript has numerous technical attributes that make it a powerful language. Many of these I admit I can't appreciate because my programming career is in its relative infancy. Indeed, the entire programming language debate I find simultaneously fascinating and confusing: <a href="http://www.paulgraham.com/icad.html" target="_blank"> check out this Paul Graham essay for a full overview of what makes a strong programming language.</a></p> 

<p>One example of a strong technical attribute JavaScript has in its favor: first-class functions. A first-class function can be treated / passed as an argument (in math, consider (f(f(x)) - this is called a higher order function, or a function that takes a function as an argument). First-class functions are not supported by Java and C. Other strong language attributes Crockford cites in his talk include dynamic objects and object literals. Importantly, other languages have many of these aforementioned strengths, but are perhaps not as popular as JavaScript because they lack the first-to-market advantages it gained early on.</p>

<p> In summary, JavaScript's popularity is one part timing (Netscape success) and one part design. I have not used Javacript enough to speak to the latter, but will formulate my own opinion as I continue to develop as a programmer. </p>
