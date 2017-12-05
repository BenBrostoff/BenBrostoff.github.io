---
layout: post
title: Gradient Descent in Simple NN (ML Series, Part 3)

date: 2017-10-09
---

This post builds on [Part II of my ML series](https://benbrostoff.github.io/2017/10/09/gradient-descent-intuition/) , and explores what role gradient descent plays in a simple neural network (NN).

I will be working off the simple one layer NN in Andrew Trask's blog post [A Neural Network in 11 Lines of Python (Part I)](http://iamtrask.github.io/2015/07/12/basic-python-network/). First, I'm going to review part of Andrew's posts and explain why this network makes a correct prediction give a certain simple pattern. Next, I'll create a pattern where the network cannot predict the right answer, and attempt to explain why. In both cases, I will refer back to Part II and build on the purpose of gradient descent.

For those unfamiliar with Andrew's blog post, here's a quick overview. Andrew creates a fake dataset where each data point is a Python list of three elements. If the first element is `1`, then the data point should be labeled `1`. If not, it's labeled `0`. A quick visual overview with all possible 8 examples (assuming each element can only be `0` or `1`):



**A Simple and Working NN**

Andrew implements a simple neural network in Python using only `numpy` for some basic utility functions (e.g. taking the dot product of two arrays).

**A Simple and Broken NN**

This network breaks when changing the rule for inputs and outputs to follow the pattern below:
