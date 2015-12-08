Title: Or Should I? 110+ NeoPixels On An ATTiny85
Date: 2015-12-08 9:41
Category: Electronics

You ever have one of those ideas you dismiss out of hand one day, only to have it sit in the back of your head and try to convince you to give it a try a few days later? My initial dismissal of running more then 110 NeoPixels on an ATTiny85 based system due to memory included some reasearch that mentioned generating the patters algorithmically instead of building the strip in memory first and then dumping the memory to the strip. From past digging into the code for this, I know that on this chip, the control software is written in assembly, and has very tight timings, but I also know that only one part of the signal needs to be timed right, and other parts are not actually that important.
This leads me to believe that I can write some code that calls the pixel output based on position in the string and a value that is calculated on the fly between pixel signals. If this works, I should be able to emulate the strandtest example I'm using right now, with basically unlimited pixel counts.
One way to find out.
