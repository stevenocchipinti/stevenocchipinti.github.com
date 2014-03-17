---
title: "TCPDump"
layout: "post"
permalink: "/TCPDump.html"
uuid: "3495865318993599546"
guid: "tag:blogger.com,1999:blog-2763821829623367137.post-3495865318993599546"
date: "2013-11-08 01:35:00"
updated: "2013-11-08 01:35:46"
description: 
blogger:
    siteid: "2763821829623367137"
    postid: "3495865318993599546"
    comments: "0"
categories: networking
published: false
comments: true
---

Example
-------

```
  sudo tcpdump -A -s 500 -vvv -i lo0  src host 1.2.3.4
              |_____________________||________________|
                      options            expression
```

Options
-------

```
  -D                  # list interfaces
  -i en0              # use en0 interface
  -vv                 # very verbose
  -nn                 # Dont resolve hostnames
  -c                  # count packets
  -A                  # show in ASCII
  -X                  # show in HEX
  -tttt               # display date and time
  -S                  # print absolute sequence numbers (instead of relative)
  -s                  # number of byte (-s 0 is unlimited)
  -w file.pcap        # write packets to file.pcap
  -r file.pcap        # read packets from file.pcap
```


Expressions
-----------

```
  src host 1.2.3.4    # source address
  src net 1.2.3.0/24  # source network
  dst host 1.2.3.4    # destination network
  dst net 1.2.3.0/24  # destination network
  port 53             # port number
```


Capturing HTTP traffic
----------------------

http://stackoverflow.com/questions/4777042/can-i-use-tcpdump-to-get-http-requests-response-header-and-response-body

GET requests:

```
tcpdump -s 0 -A 'tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x47455420'
```


POST requests:

```
tcpdump -lnA 'tcp dst port 80 and (tcp[((tcp[12:1] & 0xf0) >> 2):4] = 0x504f5354)'
```


Wireshark
---------

```
  edit -> preferences -> protocols -> http -> tcp ports
```


NGrep
-----

```
ngrep -q -d en1 -W byline -O sas.pcap host reatst.aimatch.com and port 80
```
