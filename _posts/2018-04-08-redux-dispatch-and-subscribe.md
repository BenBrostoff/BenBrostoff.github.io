---
layout: post
title: Redux - .dispatch and .subscribe
tags: redux
date: 2018-04-08
---

Today's post will look at what happens on `store.dispatch(action)` calls after the `dispatch` call invoked in `createStore` (discussed in Part I of this Redux mini-series). As a refresher, the code below was generated in Part I.

Next, I'll invoke `dispatch` on the store.

** dispatch with no listeners **

The counter now increments to 2. So what happened here? `dispatch` is actually a very short method (26 lines total, including white space), so this blog post will attempt to explain each line. The whole of dispatch is below (recall I'm using Redux `3.7.2`):



I first want to review the commentary above the `dispatch` method in the Redux source. Portions of the commentary deal with actions that are `Promise`s, which Redux out of the box does not support. I'll skip those sections for now. The first relevant section is below:

>  
Dispatches an action. It is the only way to trigger a state change.

The `reducer` function, used to create the store, will be called with the
current state tree and the given `action`. Its return value will
be considered the **next** state of the tree, and the change listeners
will be notified.
>

So, invoking `dispatch` is the only way to trigger a change in the store's `currentState`. `dispatch` is invoked with an `action` as an argument, which is passed to the reducer originally passed to `createStore`. The return value from the reducer is the new `currentState` of the tree. The final part of the sentence about change listeners is not yet relevant to the toy application I'm building, so I'll ignore it for now.

As previously noted, `dispatch` takes an `action` as an argument, which should be a POJO (helps with `redux-devtools`), needs a type property and cannot be undefined.

>
@param {Object} action A plain object representing “what changed”. It is
a good idea to keep actions serializable so you can record and replay user
sessions, or use the time travelling `redux-devtools`. An action must have
a `type` property which may not be `undefined`. It is a good idea to use
string constants for action types.
>

The beginning of dispatch just covers these bases and raises errors where appropriate.

The return value is just the action passed to it:

>
@returns {Object} For convenience, the same action object you dispatched.
>

Why this is convenient, I'm not yet sure, but will trust the source for now.

** dispatch with Listeners **