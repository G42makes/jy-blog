Title: Enable Serial Console on Server 2008 R2
Date: 2011-09-07 10:19
Author: GeekFortyTwo
Category: Personal IT
Tags: console, serial, w2k8r2
Slug: enable-serial-console-on-server-2008-r2
Status: published

I'm currently working on getting a test network setup to allow me to
troubleshoot and learn more about Exchange server. One of the servers
I'm working with is an HP system with a iLO(remote access) module
installed and fully licensed. I want to try to force myself to use the
command line(powershell) to control more of the features of Windows and
Exchange as I go forward, and so I decided to see if I could enable a
serial console login. The answer is yes, and below I show how I did it.  
<!--more-->  
The first step is to ensure I have access to a serial console to
controll things. Luckily the iLO offers integrated access to COM2 on the
server and I just needed to enable this in the bios. Another lucky
feature is that I have a Remote Console access, so I can do this from a
web browser as if I was there. On this HP I needed to go into the
BIOS(F9) and select the "BIOS Serial Console & EMS" option. This will be
different on different servers, but dig around and you will find it. If
you are using a workstation and a serial cable, you may not have BIOS
redirection settings and can ignore this. I enabled the BIOS serial
console on COM2(the one that will connect to the virtual port) and set
the speed to 9600. Additionally the EMS Console was set to COM2 at 9600
so that Windows can take over control directly from the BIOS. Saved all
the settings and
rebooted.[![](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-BIOS.png "Serial-BIOS"){.alignleft
.size-full .wp-image-159 width="569"
height="355"}](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-BIOS.png)

Once in windows we need to enable EMS on the next boot. Boot options in
Server 2008 R2 are controlled by the bcdedit commands, documented
[here](http://msdn.microsoft.com/en-us/library/ff542282(v=vs.85).aspx)(you
need to scroll down for 2008 stuff). This system does have BIOS EMS
settings, so I can use the options specified in the "Enabling EMS on a
Computer with an SPCR Table in Windows Server 2008" section, but I
wanted this to have a bit more control so I decided to use manual
settings. From a command prompt I ran the following
command:`bcdedit /emssettings EMSPORT:2 EMSBAUDRATE:9600` This setup the
system to listen on COM2 and set the speed to 9600. This does not enable
EMS on it's own and you need to run: `bcdedit /ems on` to enable it on
boot. If you only have one boot option, then this command is the exact
item you need, but if you need to specify the boot option you can
include if after the "/ems" section as documented on the linked page.

[![](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-start.png "Serial-EMS-start"){.alignleft
.size-full .wp-image-163 width="587"
height="237"}](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-start.png)Reboot
the system and start up a connection to your serial port. I used the iLO
integrated serial port, so I'm connected via a web page. Due to the BIOS
serial being enabled I get to watch the whole boot process as if I was
there, and Windows even gives you boot options(floppy, cd, hard drive)
to choose from quickly before booting. Before windows is fully booted
you have access to start controlling things, and once it reaches a
certain point in the boot process you get a notice that CMD is now
available. This is the part I wanted. Typing "cmd" at the SAC promp runs
a windows local command prompt on the server, on another channel. You
actually see nothing when you start it, and need to change to channel 1
using the "ch -si 1" command. Alternately, you can use the ESC-TAB
combination to change channels, usefull to swap between them from the
command prompt.

[![](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-channel.png "Serial-EMS-channel"){.alignleft
.size-full .wp-image-160 width="571"
height="226"}](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-channel.png)Once
on the right channel, press a key and you will be required to login.
Your domain credentials, if you have admin rights, should be sufficient
and it will ask for details on each. You are then presented with a
command prompt and running the "powershell" command you will be able to
have access to the full suite of commands on your server and control any
part of it. You can use the ESC-TAB command to get back to the SAC
prompt and run another command prompt on another channel, switching
between the two. It's the closest thing to multiple windows available on
the Windows serial console.

[![](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-login.png "Serial-EMS-login"){.alignleft
.size-full .wp-image-161 width="326"
height="115"}](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-login.png)If
you want to control windows without using the GUI, this is one option
that I think I'll keep handy. It works on the system before networks are
up, can change most settings and might allow you to save a system that
won't boot.

[![](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-powershell.png "Serial-EMS-powershell"){.alignleft
.size-full .wp-image-162 width="586"
height="141"}](http://jaredyoung.net/wp-content/uploads/2011/09/Serial-EMS-powershell.png)Jared
