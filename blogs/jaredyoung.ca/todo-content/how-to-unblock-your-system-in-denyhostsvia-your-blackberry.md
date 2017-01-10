Title: How To Unblock Your System in DenyHosts(via your BlackBerry)
Date: 2011-07-22 20:09
Author: GeekFortyTwo
Category: Personal IT
Tags: bbssh, denyhosts, ssh
Slug: how-to-unblock-your-system-in-denyhostsvia-your-blackberry
Status: published

[![](http://jaredyoung.net/wp-content/uploads/2011/07/jy.net-puttyerror.png "PuTTY Error"){.alignleft
.size-full .wp-image-14 width="224"
height="128"}](http://jaredyoung.net/wp-content/uploads/2011/07/jy.net-puttyerror.png)I
recently added a second internet connection to the house for general
usage. Because I have separated the networks I generally use a VPN to
the old IP range when I need to work. I unfortunately did not add a
sufficiently broad ip range exclusion to
[DenyHosts](http://denyhosts.sourceforge.net/index.html) on my server
and locked out my account after I logged in and out too many times too
quickly.  
<!--more-->  
My other network was offline, and I did not want to go turn it on just
for this. I could not login or even connect to the SSH port from my
local system, and renewing my public IP did not change it. Fortunately,
there are solutions. For other reasons I have had
[BBSSH](http://bbssh.org/) installed on my BlackBerry, and had setup a
login to my server. I logged into that and updated the Denyhosts
settings and removed the entry from /etc/hosts.deny for my ip.

I'm now back on my server and posting this to ensure I remember the
solution. It's good to know that DenyHosts is paying attention, and
while checking things out I found a huge list of servers being blocked,
so it looks like things are good. I might have to consider if there is
some other way I want to create as a backdoor, but right now I'm happy
to have a secure system. Now back to getting this blog fully
operational.

Jared
