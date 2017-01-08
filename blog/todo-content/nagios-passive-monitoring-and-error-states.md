Title: Nagios: Passive Monitoring and Error States
Date: 2014-08-15 10:52
Author: Geek42
Category: Code, Nagios
Tags: bash, echo, nagios, passive checks, script
Slug: nagios-passive-monitoring-and-error-states
Status: published

Just a quick one on a script I wrote for Nagios in cases where I am
using a passive monitoring service. In this case I have a backup script
that reports to Nagios once a week. This timeframe is set using the
"*freshness\_threshold*" configuration option. If Nagios does not
receive an update in this timeframe, measured from the last update, it
will try to execute the active check associated with the service. This,
of course, may be a problem if you don't have an active check to use.
Using the **echoback.sh** script listed below, I just set the active
check to use it and pass the appropriate error information that I will
want sent to me into the parameters.

<!--more-->

The code:

\[code language="bash"\]\#!/bin/bash  
\#This script is used with passive checks.  
\# Upon lack of updates in the required time, the passive check becomes
active and runs  
\# a command. Utilizing this one, we can then pass in as parameters the
error conditions  
\# that we want to return in the nagios status display. First parameter
should be a  
\# quoted string that includes the state information and what alert the
user should see.  
\# Second parameter is the exit condition.  
case \$2 in  
0)  
echo "OK: \$1"  
;;  
1)  
echo "WARNING: \$1"  
;;  
2)  
echo "CRITICAL: \$1"  
;;  
3)  
echo "UNKNOWN: \$1"  
;;  
\*)  
echo "UNKNOWN: Error: Bad exit code passed to echoback script: \$2.
Status: \$1"  
exit 3  
;;  
esac  
exit \$2  
\[/code\]

Since I use a frontend to manage my Nagios configurations(NagiosQL), I
won't post the details of my config here. You will need to define a
check command similar to the following:

    /usr/lib/nagios/plugins/echoback.sh "$ARG1$" $ARG2$

and a service check that passes appropriate arguments, but it's not hard
to operate.

Enjoy!

Jared
