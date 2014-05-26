---
layout: post
title: Migration to Jekyll
date: 2014-05-26 
---

There are few things in life I dislike more than repetitive processes that could be automated where I learn very little (recall I'm a former investment banking analyst). My initial construction of a person blog met this criteria. 

I was working with a bunch of HTML and CSS files I had coded myself. Every blog post was an individual HTML page - if I wanted to make a change to the header, footer or general layout of my site, I had no choice but to change every single page. One can imagine how annoying this process became as my blog expanded. There were also a host of smaller issues that bothered me: 

* I had to manually type in the dates and times of my posts
* My site looked terrible on mobile and tablet devices
* I was not pleased with the hierarchy of folders and each file's place in the hierarchy I made up. Yet, if I wanted to change the set-up, I would have to relink every HTML page accordingly.
* I was spending more time on layout decisions (the classic border, padding, margin debacle) and CSS shenanigans (color schemes, hover links, shapes, etc.) than I was on writing

Constructing quality blog posts (mini-essays in some cases) is a labor of love for me and something I've done since I learned to write. Pre-internet, I was journaling obsessively and documenting all the inane events interesting to a sports-obsessed grade schooler (if you want to hear about Antoine Walker's second go-around with the Celtics wherein he changed his number to 88 to accomodate Big Al Jefferson, by all means, swing by). I have experience in writing and editing my own writing (as well as others' writing) - I wrote for my local newspaper in highschool and was the Editorial Pages Editor and a [columnist for three years for the Duke Chronicle](https://www.dukechronicle.com/staff/ben-brostoff/articles). I'm very comfortable writing - I'm less comfortable managing an entire website.

Enter [Jekyll](http://jekyllrb.com/). Jekyll is a simple Ruby gem you install via your Terminal. By creating a new project through Jekyll, you get a working template with a ready-to-go setup that's easily customizable. The Jekyll new project folder reminds me a bit of a new Ruby on the Rails project in that you have a nicely organized hierarchy that lends itself to easy changes. Below is a screenshot of a new Jekyll project on my desktop: 

<center><img src = "https://lh3.googleusercontent.com/-JP5YbBMsNQg/U4NVliccwQI/AAAAAAAAALs/nEwpt9NXTaE/w215-h152-no/jekconfig.png" alt= "jekyll"></center>

From there, it's easy to fool around with config.yml, layouts and css to change your blog as you please. A massive amount of Jekyll work is posted on Github, so it's also easy to leverage off the work of your Jekyll predecessors. I actually cloned the [Scribble theme created by Mu-an Chiou from GitHub](https://github.com/muan/scribble) and customized it a bit - thanks again Mu-an. 

Since I migrated to Jekyll, I've found myself spending considerably less time on blog design and layout and considerably more time on writing. I'm biased, but I feel the quality of my writing on this blog has in part improved because of Jekyll.




