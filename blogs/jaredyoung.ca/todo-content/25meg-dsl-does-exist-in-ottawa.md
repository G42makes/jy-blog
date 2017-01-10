Title: 25Meg DSL Does Exist in Ottawa
Date: 2012-02-11 12:29
Author: GeekFortyTwo
Category: Cisco, Personal IT, Servers
Tags: 1811, cisco, DSL, hosting, internet, IT, multi-task, planning, router
Slug: 25meg-dsl-does-exist-in-ottawa
Status: published

So, none of my fears came true and I now have 25Meg DSL installed in my
house. The Bell systems will spend the next 72 hours analyzing the line
quality and adjusting the line settings to achieve optimal speeds. As of
right now I consistently get 25Meg download, and between 2Meg and 7.5Meg
upload. I'm hoping that the system will quickly become stable and allow
me to start using the upstream capacity for my servers.<!--more-->

The current results of a speed test vary wildly depending on what I use
to connect and what medium I connect over. The best results I am getting
currently are from my media center system: ![Download: 20Meg, Upload:
7Meg](http://www.speedtest.net/result/1766811313.png) Testing on my
tablet I get 15-25Meg download and about 2-4Meg upload.

My next move will be to setup my Cisco 1811 as the primary router on
this, managing my routed subnet, and my home network internet
connection. I will probably run my test network through another
router(likely the Cisco 1760) on the routed subnet I have. Once setup I
will have to decide on the layout of my OpenVZ(or Proxmox) server(s) and
get them online quickly so that I can remove my dependency on 1&1 for a
hosted server. Currently at 1&1 I have a 10Meg download and 10Meg
upload, but since upload is not a huge priority, I don't see 7Meg as
being an issue.
