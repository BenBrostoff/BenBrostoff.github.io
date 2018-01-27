---
layout: post
title: Decision Trees Introduction (ML Series, Part 4)

date: 2018-01-27
---

In my continuing attempt to automate as much as of my Daily Fantasy Sports lineup creation as possible, I've been exploring decision trees. I realized this technique might be valuable after listening to my thought process as it relates to fantasy sports. Generally, I'll ask myself questions like "Has this player broken 10 rebounds the last 2 games?" or "Is this player consistently getting over 25 minutes per game?". In addition to removing bias, a decision tree should ask better questions, improve given more data and generate insights over key features in data.

I want to start off with the simplest possible example I can think of for a decision tree. I'll use this example as an opportunity to explore the `sklearn.tree` module. In a future post, I'll review in depth how I constructed my DFS basketball decision tree, but you can [check it out here if you're interested](https://github.com/BenBrostoff/draft-kings-learn/blob/master/recipes/classifier.py).

In [Part III]() of my ML blog series, I reviewed how a neural network could be used to classify some data where only one feature mattered. A similar example here I think will be illustrative. I often find it easier to make the example as close to real as possible, so let's assume we have data on a group of basketball players, and we want to label them `0` if they scored under 20 points and `1` if they scored over 20 in a game. The three features in the data set are `minutes`, `age` and `height`; let's assume only `minutes` matters. Below is a simple decision tree with a fake dataset:

<script src="https://gist.github.com/BenBrostoff/e0269da7acd2d3c98859fe9a98e3ed96.js"></script>

You can see in the code snippet above that `tree.DecisionTreeClassifier` ships with a `feature_importances_` that lists the weight of each feature. Because `minutes` is the only feature that matters, it's assigned a weight of `1.0`, while the meaningless `age` and `height` features have a weight of `0.0`.

![](https://s3.amazonaws.com/ml-blog-series/decision_tree_basic.png)

The decision tree correctly identifies that if the player players over 30 minutes a game, then they should score over 20 points (disclaimer: this is an unrealistic and oversimplified example). The `graphviz` package allows you to visualize this data:

The visualization confirms what we know to be true; if a player plays over 30 minutes, they scored over 20 points.

How does `DecisionTreeClassifier` actually work under the hood? The source here is [pretty difficult at least for me to parse](https://github.com/scikit-learn/scikit-learn/blob/master/sklearn/tree/tree.py#L75), so I turned to the blogosphere for answers.
