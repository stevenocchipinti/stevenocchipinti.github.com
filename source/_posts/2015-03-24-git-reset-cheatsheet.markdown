---
layout: post
title: "Git reset cheatsheet"
description: "Git reset cheatsheet"
date: 2015-03-24 11:13
comments: true
published: true
categories: git
---

The `reset` command in git does quite a lot, but I always forget all its uses.  
This is a cheatsheet based on [this blog](http://git-scm.com/blog/2011/07/11/reset.html).

The `reset` command will:  
1. Move whatever branch `HEAD` points to _(stop here unless `--soft`)_  
2. THEN, make the Index look like that _(stop here unless `--hard`)_  
3. THEN, make the Working Directory look like that  


Commit level
------------

<table style="border-collapse:collapse;margin-bottom:30px;table-layout:fixed;width:100%;">
<tbody><tr>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:40%;">
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Updates Current Branch?
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Updates Index?
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Updates Working Dir?
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Working Dir Safe?
</th>
</tr>
<tr>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<code>reset --soft [commit]</code>
</th>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
</tr>
<tr>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<code>reset (--mixed) [commit]</code>
</th>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
</tr>
<tr>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<code>reset --hard [commit]</code>
</th>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<span style="color: rgb(255, 38, 0);">NO</span>
</th>
</tr>
<tr>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<code>checkout [commit]</code>
</th>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
</tr>
</tbody></table>


**reset &#45;&#45;soft [commit]**  
When given `HEAD~`, this undos the git commit  
Will move the current branch back to the given commit, but not update the index or working directory  
This provides similar functionality as `git checkout --amend` (but changing the whole commit, not just the message)  

**reset (&#45;&#45;mixed) [commit] <span style="color: rgb(160, 160, 160); font-weight: normal;">(default form)</span>**  
When given `HEAD~`, this undos the `git commit` and the `git add`  
Will move the current branch and update the index, but working directory will remain untouched  

**reset &#45;&#45;hard [commit] <span style="color: rgb(255, 38, 0);">(unsafe)</span>**  
When given `HEAD~`, this undos the `git commit`, `git add` and also the changes in the working directory  
Will update all three trees to match the given commit  
This is useful to remove commits you don’t want  
From a clean working tree, it is also useful to undo a conflicted (or not conflicted) `git merge` or a `git pull`  
From a dirty working tree, use `--merge` instead, this will safely preserve your local changes  
The `--keep` option is useful when removing some of the last commits while safely keeping your local changes  

**checkout [commit]**  
When given `HEAD~`, this will safely update the working directory and the index without moving the current branch  
This will leave you in a _detached HEAD_ state  


File level
----------

<table style="border-collapse:collapse;margin-bottom:30px;table-layout:fixed;width:100%;">
<tbody><tr>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:40%;">
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Updates Current Branch?
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Updates Index?
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Updates Working Dir?
</th>
<th style="border: 1px solid rgb(219, 219, 219); padding: 10px; margin: 0px;width:15%;">
Working Dir safe?
</th>
</tr>
<tr>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<code>reset (commit)&nbsp;[file]</code>
</th>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
</tr>
<tr>
<th style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<code>checkout (commit) [file]</code>
</th>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
NO
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
YES
</td>
<td style="border-style:solid;border-width:1px;border-color:rgb(219,219,219);padding:10px;margin:0px;width:20%;">
<span style="color: rgb(255, 38, 0);">NO</span>
</td>
</tr>
</tbody></table>


**reset (commit) [file]**  
When given a file path, the first step of updating the branch that `HEAD` points to is skipped  
Will update the index only to match commit, leaving both working directory and current branch untouched  
From here, you could use `git checkout` to make the working directory match the index, although `git checkout` can do that with one command (see below)  
The commit parameter will default to `HEAD` which effectively _un-stages_ files  

**checkout (commit) [file] <span style="color: rgb(255, 38, 0);">(unsafe)</span>**  
Updates the working directory only, without changing the index, current branch or even what `HEAD` is pointing to  
This would effectively be `git reset --hard [branch] file`, but this command does not exist  


More info and examples in `git reset --help`
