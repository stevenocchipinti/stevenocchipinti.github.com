---
title: "Can't open file for writing"
layout: "post"
permalink: "/2011/06/cant-open-file-for-writing.html"
uuid: "5270141294587819943"
guid: "tag:blogger.com,1999:blog-2763821829623367137.post-5270141294587819943"
date: "2011-06-18 13:09:00"
updated: "2011-06-18 13:09:09"
description: "E212: Can't open file for writing with vim"
blogger:
    siteid: "2763821829623367137"
    postid: "5270141294587819943"
    comments: "0"
categories: [vim, linux]
comments: true
---

{% blockquote %}
E212: Can't open file for writing  
Press ENTER or type command to continue
{% endblockquote %}

If you use `vim`, you have probably come across this error before.  
It normally happens when you don't have permission to write to your chosen destination.

The temporary solution has traditionally been to save your changes to somewhere where you do have permissions (such as `/tmp` or `~`), then use `sudo` to `cp` it across, or re-open the file in vim with `sudo`.

A collegue at work showed me a great trick to get around this when it happens (Thanks [@rich0H](https://twitter.com/rich0H)). All you have to do is add this to your `.vimrc` file:

{% codeblock .vimrc %}
command! W w !sudo tee % &gt; /dev/null
{% endcodeblock %}

Then when you come across this error again, instead of of using `:w` you can use `:W` and it will prompt you for your `sudo` password before saving.

Works brilliantly!
