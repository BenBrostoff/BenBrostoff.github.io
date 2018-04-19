---
layout: post
title: Redux - .subscribe
tags: redux
date: 2018-04-18
---

My [last post](http://benbrostoff.github.io/2018/04/09/redux-dispatch-and-subscribe.html)explored calling `.dispatch` on a Redux store without listeners; in this post, I will add listeners to the toy application we've been building in this series and trace the `subscribe` source in the process. I'm now using `v4.0.0`, which was [released on April 16th](https://github.com/reactjs/redux/releases/tag/v4.0.0) - when I started on this series, Redux was on `v3.7.2`. To begin our code exploration, I'll call subscribe on our Redux store and pass in a callback that just logs the state of the store to the console:

<script src="https://gist.github.com/BenBrostoff/b296bda2b96040d0ec9950a7402d2fe6.js"></script>


Let's begin with the documentation for `subscribe` in the source.

> Adds a change listener. It will be called any time an action is dispatched,
and some part of the state tree may potentially have changed. You may then
call `getState()` to read the current state tree inside the callback.

The next items in the docs before the function signature are about calling `dispatch` from a change listener, which we'll ignore for now since our toy example does not do this. The function signature explains that `subscribe` expects a function that will be invoked on every dispatch and returns a function that when invoked will unsubscribe the listener:

> @param {Function} listener A callback to be invoked on every dispatch.
> @returns {Function} A function to remove this change listener.

The full `v4.0.0` source  for `subscribe` is below. When reading this blog post, it may be useful to split screen and have it open, although I'll add gists where relevant:

<script src="https://gist.github.com/BenBrostoff/226d5e7ea1c4ebe1c8b8293ea29ee795.js"></script>

As we've seen elsewhere in the Redux source, the beginning of the function body is type checking and raising errors if the expectations outlined in the docs are not met.

The first interesting thing that happens here is below:

Redux sets a variable that will be updated later called `isSubscribed` to `true` - this makes sense from a naming perspective, as we're subscribing to a function. A function called `ensureCanMutateNextListeners` is called next, which is small despite the long name. All this does is check if two variables declared in `createStore` are the same array (and originally they are - `let nextListeners = currentListeners` happens on `createStore`). If they are, `nextListeners` is set equal to a copy of `currentListeners`, thereby destroying the equality:

<script src="https://gist.github.com/BenBrostoff/994b547071145785093b0f1970485df6.js"></script>