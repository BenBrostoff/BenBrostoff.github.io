---
layout: post
title: Margin, Border and Padding
date: 2014-04-13 12:00:00
---

I found the diagram below (linked <a href= "http://www.w3.org/TR/CSS2/box.html" target="_blank">here</a>) to be extremely helpful in thinking about the differences between margins, borders and padding: 

->![](http://www.w3.org/TR/CSS2/images/boxdim.png)<-

This diagram speaks to the CSS Box Model that (arguably) forms the core of understanding CSS positioning. I find it useful to work from the outside and in when discussing the box model.

<p> <b> Margin - </b> Margins refer to space between the outer perimeter of an element (beginning at the end of the border) and the outer perimeter of another element (beginning at its respective margin). I generally will adjust margins when I am not comfortable with how far one element is from another. Margins are largely invisible (no color) and forcefield like in that you don't see them, but they are your guard against other elements. </p>

<p> <b> Border - </b> Borders work between the beginning of the margin and padding. Unlike margins, you often do "see" borders in the form of border styles (thick, thin, dotted, solid, color, etc.). Borders are the box the user sees if an element is boxed. </p>

<p> <b> Padding - </b> I think of padding if and when I realize that the content (text) looks too "boxed in" or "boxed out". Padding is an apt name - it is literally in a football sense an element's pads against visible danger (the border). More padding means more white space between content and border; less shows a more closed-in look. </p>

<p>All of the above can be customized by side (with parameters going [Top],[Right], [Bottom], [Left] in CSS). Customization may be necessary depending on how the content is shaped, but I try to opt for symmetry in most cases. </p> 

<p> Like so much of coding and web design in general, I find I understand these concepts better the more I practice and mess around with them. These technical posts in the future will try to relay how my experience in practice has enhanced my understanding of concepts.</p>


