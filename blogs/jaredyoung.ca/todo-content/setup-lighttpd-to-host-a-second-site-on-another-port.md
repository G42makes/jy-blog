Title: Setup Lighttpd To Host A Second Site On Another Port
Date: 2011-07-22 20:33
Author: GeekFortyTwo
Category: Web Hosting
Tags: hosting, index, lighttpd, pdf
Slug: setup-lighttpd-to-host-a-second-site-on-another-port
Status: published

While setting up my Blog I wanted somewhere to put my
[resume](http://resume.jaredyoung.net/). I didn't want to run a separate
virtual machine to host one or two files, and the blog itself is hosted
on [Lighttpd](http://www.lighttpd.net/). I setup my reverse proxy to
redirect requests for http://resume.jaredyoung.net/ to the same internal
IP address, but using port 81.  
<!--more-->  
In the Lighttpd config I added the following section at the end to
enable listening on port 81 and additionally allow PDF files to be used
as index files:

`$SERVER["socket"] == ":81" {         server.document-root    = "/var/www/resume"         index-file.names        = ( "index.php", "index.html", "index.htm", "index.pdf", "resume.pdf" ) }`

I left in the index.php and index.html files if I decide to put one in
there for a bit more control in the future.

A quick restart and it all works perfectly. Feel free to [take a
look](http://resume.jaredyoung.net/), I need a job right now.

Jared
