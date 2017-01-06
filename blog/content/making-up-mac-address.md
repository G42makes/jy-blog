Title: Making Up MAC Addresses
Date: 2015-11-25 13:15
Category: Networking

Just a quick one here. I was working on some virutalization at the office and we used generated MAC addresses from a script we had written for each of the interfaces on our systems. The first part of the MAC was setup to allow us to know what network we were on inside the VM, and the last part was basically part of the IP address that should be assigned to it. For some reason one network was unable to get the interfaces online. The error in Linux was annoying because it was saying "unable to assign address" and nothing else. After a lot of digging an old memory bubbled to the surface and I did some searching online. Under [Address details](https://en.wikipedia.org/wiki/MAC_address#Address_details) on Wikipedia you can find a graphic that shows some of the bits of a MAC address are used for specific purposes. And we were accidentally setting the "multicast" bit. So, of course, Linux just failed to process that and gave a bad error message.
Once we took that into account, everything returned to working properly.
