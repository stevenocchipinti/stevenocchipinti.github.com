---
title: "Adding a network printer in Ubuntu 12.04"
layout: "post"
permalink: "/2012/08/adding-network-printer-in-ubuntu-1204.html"
uuid: "866020919509000504"
guid: "tag:blogger.com,1999:blog-2763821829623367137.post-866020919509000504"
date: "2012-08-05 04:11:00"
updated: "2012-08-05 04:11:40"
description: 
blogger:
    siteid: "2763821829623367137"
    postid: "866020919509000504"
    comments: "11"
categories: [linux, howto, printer, ubuntu]
comments: true
---

In the old days, printing was really hard in linux. It was one of the things that was a deal breaker when trying to switch from Windows for a lot of people, but when I first tried Ubuntu (probably around 2006-2007) it made all that pain go away! It was easy! A couple of clicks and you could set up a network printer and its been that easy ever since.

Recently Ubuntu have tried to make their settings screen a bit like a Mac, and to simplify everything they seem to be using a simplified user interface for the printer configuration too:

{% img center http://3.bp.blogspot.com/-Bx9JrDkVYrk/UB3w_5N77aI/AAAAAAAAAKY/5HHdw8ZErB0/Screenshot+from+2012-08-05+14:04:37.png New Settings user interface %}
{% img center http://4.bp.blogspot.com/-xO2uGM8R36A/UB3xME_iwZI/AAAAAAAAAKg/kBFbC_MDcv8/Screenshot+from+2012-08-05+14:04:55.png New Printing user interface %}

Well this new interface doesn't work for me, when I try to add a network printer, I get the error message:

{% blockquote %}
FirewallD is not running. Network printer detection needs services mdns, ipp, ipp-client and samba-client enabled on firewall.
{% endblockquote %}

{% img center http://1.bp.blogspot.com/-FTpSMga_I2I/UB3xOZVzlDI/AAAAAAAAAKo/4_KILPWTWTg/Screenshot+from+2012-08-05+14%253A03%253A44.png The error that stops me from finding my network printer %}

Well no matter what I did, I couldn't add my printer. After some googling around, I found how to get to the old user interface... which actually works!
Just type this into a terminal:

```
sudo system-config-printer
```

And you will be given this old familiar screen:

{% img center http://1.bp.blogspot.com/-SnoWmsgEnX0/UB3xQWJYmhI/AAAAAAAAAK4/LCbtVTqQFZE/Screenshot+from+2012-08-05+14%253A04%253A55.png The classic printing user interface... the one that works! %}

Clicking the big "Add" button in this screen and following the steps worked great for me. Another alternative is to use the CUPS web interface on http://localhost:631 but that can be a little more complicated.
