A couple of scripts that are essential when running your own bitcoind instance.


bitcoin:
Typical shell script to be put in /etc/init.d to
start/stop bitcoind service. Valid as of Bitcoin Core v0.12.1


check-bitcoin-service.pl:
This is a PERL script to periodically check if bitcoind is still running. It's
well known that bitcoind likes to eat up memory and die off. This should be set
as a cron job that runs often. It will restart the service if it see's that it 
has stopped.

This assumes you're on a linux distro that uses the "service" command to manage
system services.

