Title: Musings on Faster Internet
Date: 2012-02-08 16:25
Author: GeekFortyTwo
Category: Personal IT, Servers, Web Hosting
Tags: bell, Cable, cisco, DSL, exploding, fun, hosting, internet, ISP, IT, multi-task, server, TekSavvy
Slug: musings-on-faster-internet
Status: published

Our house is in a neighbourhood that is not well served by current DSL
offerings. The area has been using the same phone lines that were
installed 50 years ago and it shows. Most people in our area are told
that they cannot get more then 2Meg services on DSL from any provider.
If it rains we get a major slowdown in DSL speeds and I'm half expecting
the wires to fall off the poles any day now(not ours, it was restrung in
the last few years due to a microburst).  
<!--more-->  
According to my sources(my neighbour who watches this a little closer
than I do), Bell recently completed installing the [Fiber to the
Node](http://en.wikipedia.org/wiki/Fiber_to_the_x#Fiber_to_the_node) in
our area. I currently have a DSL dry loop with a static IP and routed
subnet for my server playing, and a cable modem hooked up for general
home internet access(mostly Netflix at this time). I decided the only
way to know if the 25Meg promise from the new service could be met was
to try it. I contact [TekSavvy](http://teksavvy.com/en/default.asp), my
ISP, and put in my order. The install is on Friday, and if this works I
won't have to keep my cable internet.

While looking around about the technology some interesting things came
to light. First is that the cellpipe modem is actually made by
Alcatel-Lucent, which happens to be where my partner works. The modem is
a cellpipe 7130(as best I can tell), that goes with the 7330 Fiber to
the Node hardware. If you are curious as to what this looks like,
[here](http://www.lightreading.com/document.asp?doc_id=131210) is one
that blew up(it has backup power batteries, likely the cause of this
problem). From some digging on wikipedia it looks like this is a setup
where a new local box is installed in the area, connected to bell by the
old copper connections for legacy services, and a new fiber loop. There
is a VDSL2 DSLAM(the other end from the modem) in the box that
subscribers can access and share the fiber line.

I've recieved the modem, it was left on my porch, the Bell tech should
be here on Friday to install the dry loop wiring(they use different
wiring, possibly 2-4 pairs for this hardware) and another will come
later in the day to setup the modem and test things out. I am fully
expecting this to have problems and will be amazed if this works on the
first try. Expected problems include the local loop being too long to
sustain a 25/7Meg signal even though Bell claims that it should work,
one tech not doing his job properly and causing the other to be unable
to complete their work, improper provisioning of services, modem
broken(it has obviously been opened somewhere and re-sealed), insanely
slow speeds due to crappy wires, no static IP, no routed subnet, no
authentication with my ISP and aparently exploding boxes. Friday will
tell.

If everything works, and that is a big IF at this point, I should have
very good downstream and upstream service. 25Meg down is nothing to
laugh at, and I hope I can use that to it's fullest, but I am really
looking forward to 7Meg upstream. Currently I have a server hosted at a
data center in the US. It's a good setup, I have had no problems with
this setup, but it's getting on in years(current uptime is 658 days) and
needs a rebuild. I have the hardware at home, and soon the upstream
speeds, to justify installing this on my home network and get rid of the
monthly fee paid there. If everything works on this DSL line I will
besaving \$150/month or more on internet related services. I think I
will have to re-consider my OpenVZ setup, and seriously consider an
investment in a UPS for my power needs. Hopefully my Cisco 1811 can deal
with the internet speeds, and my access point can cover the house with
enough speed too.

Jared
