---
layout: post
title: "Introduction to Vim for IDE users"
description: "Introduction to Vim for IDE users"
date: 2014-03-17 17:23
comments: true
published: false
categories: vim
---

> I'd love to learn Street Fighter 2, but there are just so many combos!   
> - [Thoughtbot](http://robots.thoughtbot.com/the-vim-learning-curve-is-a-myth)

When learning vim for the first time there are lots of approaches, but two common ways are:

1. Learn "pure" vi/vim, then introduce vimrc options and then plugins
2. Start with an existing "customization" (from someone else), then learn what things do

Once upon a time, I would have suggested learning the basic features of vim before getting into customization, but there are quite a lot of people who are not interested in learning the tool unless they can be productive straight away.  
When coming from an IDE, the shortcomings of a less integrated text editor will scare them away before they have discovered the power of editing text with vim.

This guide is aimed at those people. I want to outline some steps to learn vim that makes the transisition from IDE to vim as easy as possible with the hope of making vim a less scary step.


Installing Vim
--------------

Most systems will come with a version of vim, but you may want to get the latest version from the systems package manager for a more complete feature set.

On a mac, the standard install of `vim` is missing clipboard support so I would recommend installing MacVim, here is how I do it:

```
brew install macvim
brew linkapps
```

This package provides `mvim` on the command line, but `vim` will still refer to the system version, so I setup a couple of aliases in my `.bash_profile`:

```
alias vim="mvim -v"
alias vi="vim"
```


Customizing Vim
---------------

- built in to vim
  - vimrc
    - syntax
    - tabstop
    - mouse
  - ctags
- plugins
  - vundle
  - ctrl\-p
  - NerdTree

