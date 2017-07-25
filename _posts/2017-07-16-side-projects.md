---
layout: post
title: Side Projects - Lessons Learned

date: 2017-07-31
---

I am now beginning Month 5 of work on a side project, and wanted to record some things I've learned. I specifically wanted to write about side projects because I strongly believe in their ability to help me learn new technologies. My hope is that this post will be useful to both me in the future as I begin work on other side projects, as well as other developers considering starting side projects. Importantly, none of the advice in this post should apply to business critical applications or projects that do not have goals of simply educating the maker.

This post is centered around [Intellectual Personal Assistant](https://itunes.apple.com/us/app/ipa-intellectual-personal-assistant/id1231802988?mt=8), a currently iOS-only mobile app I began in April. The goal of IPA is to make managing my free-time intellectual pursuits easier - in short, organizing all the books, articles, podcasts and movies I want to read, listen to or watch.

**Technology 1**

My biggest piece of advice to myself is to pick the technology you most want to learn (a.k.a. Technology 1) as the founding reason for starting your project. In this way, there is no failure, in the sense that if you're learning, you've already succeeded. I started IPA with the goal of learning a little bit about React Native. In the process, I learned about:

- publishing on the iOS App Store
- the Amazon Product and iTunes APIs
- Django signals
- XCode and Simulator
- the React ecosystem

By the same token, I think it's also important to ship as often as possible and not be overcome by technical debt. At various points I've considering doing the following with IPA (and probably will at some point):

- moving the Heroku backend to EC2
- making an Android version
- making a desktop version
- getting Redux into the project

I haven't done these things yet, because in my estimation all would significantly push back features I do want to ship by the end of the summer and beyond. Not shipping important features kills momentum on side projects - hence the delays here.

**Time Management**

I put this one and organization first because I really learned the most in these areas from working on this project. My side projects die if I lose my momentum, and I lose my momentum when I decrease time spent on the side project.

There's other obvious cause and effect cycles between time management and project momentum. It becomes easier and easier to change code when you're exposed to it everyday, and harder and harder if you step away from the codebase for even a week.

Having a full-time job necessitates that work on side projects occur on weekday mornings or weekends. Weeknights at least for me are simply not possible because of fatigue and the fact that trying to code past 8 pm usually keeps me awake past midnight. While weekends are great for 3+ hour chunks of coding and when I accomplish my largest features, they cannot be relied upon for ensuring side project success for the same reason that cramming for a test rarely works. If you drop all project work during the week, you're both less familiar with your code by the time the weekend rolls around and less invested in it.

As a result, I quickly learned the success or failure of IPA would hinge on weekday mornings. To this end, the book that helped me the most when working on IPA was [How to Love Waking Up](https://www.amazon.com/How-Love-Waking-Up-Hands-ebook/dp/B00Y1PUAUK). The title sounds cheesy, but I think the advice contained is worth the $2.99. (Add quote from book)

**Organization**

- When am I going to do my next release?
- Summer timeline v. year timeline v. beyond timeline
- What refactoring tasks are high priority? The big ones I have worked on since the start of my project were upgrading `react-native` (I started on 0.42), changing my schema to house all content in one table (books, movies, podcasts, etc. used to be separate tables) and changing my navigation library (moving from `react-native-deprecated-custom-components` (yes, that is currently the name of the library) to `react-navigation`, still a WIP).
- Notecard system

**Momentum**

Momentum I have come to realize is the most important variable in whether work is completed on a side project.

**Learning**

I really believe this - you learn the fastest when the stakes are highest. When you are the only author on a code repository, every failure is distinctly your fault. Every bug ties back to a line of code you wrote, or a dependency you created. When a performance bottleneck exists, you created it. When `render` is being called way too many times for no apparent reason, that's on you.

(bug example - there's a lot)

**UI And Eating Your Own Dog Food**

I try to use IPA as much as possible in all mental states - tired, after a cup of coffee, after a beer. Here's what I realized quickly about myself (and maybe some of these apply to other users - maybe not):

- The app should always offer me something to check on, and that should be front and center when opening the app. For Seeking Alpha, this is stock quotes and articles. For ESPN's fantasy baseball app, this is my current matchup and the  scores on each category, with quick access to my players and my opponents' players. For Google Maps, this is a map of where you are and a search bar to input where you're going.   
- I expect every part of a mobile app to react to touch. Any element on the screen that looks touchable needs to do something awesome, and preferably that thing is to get me to another great screen with lots of other cool linking things. As an aside, I think video games have set this precedent, since we're now all used to constantly moving landscapes and interactive design.
-  I like to be able to scroll. I find this really satisfying for whatever reason. Non-smooth or cut off scrolling is recognized immediately by users.

**Linting, Formatting, Testing**

More important than you think.

- `componentDidMount` and rules
- `prettier`
- Unused styles
- Contract with yourself

**Feedback**

My family, my girlfriend and a few friends of mine are my hallway feedback testing and production bug detection for IPA. My brother is never afraid to tell me how much IPA sucks (in a good way - he's even making fake JIRA tickets!). Asking for constant feedback also gets people on your back when you do a few weeks without a release.

**Metrics and Accountability**

This is another way to ensure momentum. What gets measured gets managed, and having week to week graphs is an easy way to do a Sunday evening "state of the app" for yourself. I do the same thing with Map My Run and think this also works well for running.  

 Sam Altman's [Startup Playbook](http://playbook.samaltman.com/) gets into this.
