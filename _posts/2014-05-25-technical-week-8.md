---
layout: post
title: Static v. Dynamic Typing
date: 2014-05-25 
---

This quote from Brendan Eich (creator of JavaScript) caught my eye while reading Peter Seibel's [*Coders at Work*](http://www.amazon.com/Coders-Work-Reflections-Craft-Programming/dp/1430219483):

>Dynamic languages became popular because people can actually rapidly prototype... Then maybe ater on, if they have a language that can support it, or if they're recoding in a static language, they can write down the types. That was one of the reasons why in JavaScript we were intereted in optional typing, and we still are, though it's controversial in the committee. There's still a strong chance we'll get some kind of hybrid type system into a future version of JavaScript.

>

I neglected to note [in an earlier post on criticisms of JavaScript] (http://benbrostoff.github.io/2014/04/20/technical-week-3/) that many programmers object to the language only catching type errors at runtime as opposed to compile time. In JavaScript, as in Ruby, Python, and other dynamically typed languages, variables are interpreted at runtime and can be changed (e.g. reassigned) as the program runs sequentially. 

Consequently, **dynamic languages** make no demands of the programmer at compilation time and use inference to define types at runtime. This inference is also referred to as **duck typing** - objects that look like and act like type "duck" are assumed to be of type "duck" at runtime. As Eich notes in the quote above, such languages allow for faster prototyping. 
  
In contrast, **static languages** force the programmer to define types at compilation time and are simultaneously restrictive to productivity and a boon to error-free code. Java is the posterchild of static languages, and, to a lesser extent, C and C++ are known for being statically typed (unlike Java, though, types are not as rigidly enforced throughout the program in runtime). 

The debate around different different types of typing interestingly really seems to be about different types of programmers. "Good" progammers can be trusted with dynamically typed languages because they pay attention to types in the first place and write good tests. Conversely, "bad" programmers cannot be trusted to to not make type errors and need static typing to keep them in check. 

To a proponent of statically typed languages, any efficiency advantage to be had from dynamically typed languages is more than negated by the silly type errors that result from the lack of checks native to dynamic languages at compile time.

To a proponent of dynamically typed languages, statically typed languages are unnecessarily slow and take x + y lines of code to accomplish what could be done in x lines of code in a dynamically typed language.

This last point registers significantly with me, as during my brief time in an intro Java class, I remember being extremely annoyed with the class hierachies and the inability to code "outside" of a class. Just the build up to writing something useful - **public static Main** and **public static void Main (String args[])** and what not - was a constant thorn in my side. In contrast, Ruby gives the programmer freedom to call whatever method on whatever object and deal with the consequences (if any) at runtime. 

I understand any programmer over the age of 30 is probably reading this and shaking their head. Older languages no doubt were less lenient on type definition and built better programmers as a result. Anyone who argues that today's programmers are building bad habits as a result of new dynamically typed languages is likely correct. 

However, the solution to the new generation of programmers having bad habits is not to have them stop using dynamic languages entirely - it's to change the education system. Even if a language is dynamically typed, programmers can learn to keep track of their types by explicity defining them in the code (if the language allows it), using well written tests and [constant vigilance] (http://harrypotter.wikia.com/wiki/Alastor_Moody). 

Now, if you'll excuse me, I have to go bang out some Ruby code with no regard for type errors. 
 
 



