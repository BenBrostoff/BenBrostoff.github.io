---
layout: post
title: Redux - createStore

date: 2018-04-07
---

I have been using React for about two years now, but have never used Redux for a major project. As I'm on vacation for a few days, I figure this is a great time to start learning Redux without the pressures of daily work. I want to take a different approach to learning frameworks this time around - using a bottom-up approach instead of top-down one. I'm going to review the source code instead of API docs.

In my early experiments with Redux, I was delighted to find no frontend framework is necessary. Redux can be used in a Node project without issue, although that was obviously not the intent of Dan Abramov and its authors. Because experimenting outside of the browser leads to fewer distractions - no consideration of the DOM or browser APIs is necessary - this blog series will use a command-line app in Node as the project that invokes Redux.

This blog post will focus on Redux's `createStore`, and use a dumb counter command line application to discuss the Redux store. `createStore` only requires one argument (`reducer`), and can optionally take a `preloadedState` and `enhancer`. Today, I'm only going to pass the required `reducer` argument to `createStore`. The Redux source code describes this argument as follows:

>
@param {Function} reducer A function that returns the next state tree, given
the current state tree and the action to handle.
>

And what does `createStore` return? 

>
Creates a Redux store that holds the state tree.
The only way to change the data in the store is to call `dispatch()` on it.
>

Let's trace the source code with only the `reducer` argument. Not passing a `reducer` that's a function throws an error:

That makes sense, as no function means no way to input a state tree and output a new state tree.

The source then initializes 5 variables via `let` - meaning these variables can be set to different values without error - and 6 functions. Finally, a call to `dispatch` is made:

>
// When a store is created, an "INIT" action is dispatched so that every
// reducer returns their initial state. This effectively populates
// the initial state tree.
dispatch({ type: ActionTypes.INIT })
>

`ActionTypes.INIT` is a string that begins with `@@redux/INIT` and ends with a randomly generated alphanumeric string, like `3.o.k.a.q.1.v.5.x.q.s.b.6.r.d.i.y.6.6.r`. The Redux source notes about these action types:

>
These are private action types reserved by Redux.
For any unknown actions, you must return the current state.
If the current state is undefined, you must return the initial state.
Do not reference these action types directly in your code.
>

I don't expect my code to be familiar with the action type ``3.o.k.a.q.1.v.5.x.q.s.b.6.r.d.i.y.6.6.r`, so my `reducer` should return the current state - this makes sense, as the code comment before the first `dispatch` says its purpose is for every reducer to return its initial state.

This first `dispatch` call can be seen when creating a Redux store. I've set a breakpoint on `dispatch` within `createStore`, and here's what the first invocation looks like:

// TODO - debug with Node, pause on dispatch