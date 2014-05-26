---
layout: post
title: SQL Injection
date: 2014-05-18 
---

<p class = "blogpost">SQL (Structured Query Language) injection is a common method used by malicious users to query databases via user entry fields. The malicious user more or less "tricks" the database into revealing sensitive information by entering SQL commands. The "trick" is a bit of a misnomer, as the code behind the SQL is just functioning properly, and the malicious user (let's call it hacker going forward) is taking advantage of "unsanitized" code. The hacker may access, alter or delete information through entering simple SQL commands into user fields and guessing field or table names in the database.</p>

<p class = "blogpost">SQL injection is a key concept for any aspiring programmer to gain knowledge of in that (i) it is an easy attack mechanism for potential hackers to implement (apps such as Havji allow for automated injection without knowledge of SQL) and (ii) defenses against SQL injection are similarly easy to implement (although offense and defense both continue to evolve).</p>

<p class = "blogpost">Defense against SQL injection in part involves "sanitizing code". One example of sanitization is controlling input into user fields. By only allowing specific characters to be input into user fields, hackers are unable to enter in certain SQL commands into such fields.</p>

<p class = "blogpost">Sanitization, however, is by no means fail-safe, and perhaps the optimal solution here is to <a href ="http://www.esecurityplanet.com/hackers/how-to-prevent-sql-injection-attacks.html" target="_blank">avoid constructing SQL queries with user input</a>. Instead, SQL queries would be made via prepared statements or stored procedures as opposed to full queries. Other defenses available to programmers include data encryption, data segregation, permission limitations and firewalls.</p> 

<p class = "blogpost">Overall, SQL injection has received its share of attention over time due to some <a href ="http://www.esecurityplanet.com/hackers/how-to-prevent-sql-injection-attacks.html" target="_blank">extremely high profile attacks making use of the technique</a>. Concurrently, defenses against SQL injections have also involved, meaning the cybersecurity experts of the world are making it increasingly difficult for the hackers. All programmers would be well advised to make use of the significant literature on SQL injection defenses. </p> 
