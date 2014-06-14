---
layout: post
title: DBC Week 2 Wrap - From CSV to SQL

date: 2014-06-14
---

I'm a sports nerd and regular attendee of the [Sloan Sports Conference](http://www.sloansportsconference.com/), so DBC's focus on parsing data in Week 2 of camp was right up my alley. It also gave me an excuse to delve deeply into my favorite baseball team's last 100+ years of team stats, which culminated in the creation of a Boston Red Sox terminal applicaton. This post will discuss the creation of this little app, the repository of which can be found [here](https://github.com/BenBrostoff/red_sox_stat_finder). 

Among other things, Week 2 of DBC was heavy on using Ruby's [CSV class](http://ruby-doc.org/stdlib-1.9.2/libdoc/csv/rdoc/CSV.html) and the [SQLite3 gem] (http://rubydoc.info/gems/sqlite3/1.3.9/frames). The former is a means of parsing CSV data and the latter allows for execution of SQL commands from external databases within Ruby programs. 

These two tools got me thinking a lot about filtering data. The CSV class in Ruby can be used to convert rows of CSV data into an array of arrays, while SQLite3 gives you the full force of SQL querying functionality. As someone who enjoys looking at random baseball stats, I knew I had to put these tools to use in a baseball capacity. 

The folks over at [baseball-reference](http://www.baseball-reference.com/) have tables of tables of every baseball stat imaginable in CSV format. I decided to grab the Red Sox team history [page](http://www.baseball-reference.com/teams/BOS/), and parse the whole thing using `CSV#read`, which returns an array of arrays, wherein each array is a row of data. From there, I iterated through the array and loaded the data into a database using SQLite3. 

Once the data was in the database, it was easy to write methods that used database queries to filter information. Consider the method below, which takes four arguments to determine what type of data a user wants to see, the range of years over which the data spans and whether the data is sorted in chronological order, ascending by category or descending by category: 	

<script src="https://gist.github.com/BenBrostoff/08f31330002bf2b0f150.js"></script>

As an avid Red Sox, I was pleased to find this app was nice for discovering some interesting info about our wonderful franchise. The best Red Sox team of the three recent WS teams by [Pythagorean Winning Percentage](http://en.wikipedia.org/wiki/Pythagorean_expectation) was the 2007 team (.624). I fully expected those teams to be followed by the 2013 and 2004 teams since, say, 2000, but the 2002 team was actually better than the 2004 team on this basis. Note that the 2002 team did not make the playoffs despite posting 93 wins and sending 7 guys to the All-Star Game. Thus, the stats bear out that fortune did not favor this team:

<p align="center">
<img src="https://lh6.googleusercontent.com/-ESbN4LdAlr8/U5xiRronReI/AAAAAAAAAMc/hnBCHj9IUUs/w342-h451-no/Screen+Shot+2014-06-14+at+10.50.48+AM.png" alt="some_text">
</p>

Also, did you know the Red Sox team with the oldest pitching staff ever (clocking in at an average age of 33.6 years) was the 2005 Red Sox? Credit David Wells (42 at the time), Tim Wakefield (38), Mike Timlin (39) and Mike Myers (36) for that one. Youngest? The 1916 team, at 24.4 years (a trend I noticed here is that baseball teams in the early 1900s were much, much younger than "modern era teams" - in fact, the top 12 youngest Sox teams are all from 1930 or earlier).  

The process of building this little application only continued to reaffirm to me the value of programming skills as they apply to statistical analysis. I'm excited to continue learning in this and many other respects. 


