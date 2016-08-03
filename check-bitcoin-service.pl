#!/usr/bin/perl 
#
# Filename:    check-bitcoin-service.pl 
#
# Description: This script runs periodically to check if bitcoind is still running, if not 
#              it starts the service. bitcoind has a number of problems one of which is a memory leak
#              eventually it uses up all the resources and shuts down, then needs to be restarted.
#              
#              On a slightly related note a bitcoind instance should not be started if a current one is still
#              running/attached to the DB. If you do it jacks of the db and it can't sync the blockchain.

$result = `pidof bitcoind`;
chop($result);

if ($result > 0) {
   # If process has PID do nothing
} else {
   # If process hs no PID then start it
   exec("service bitcoin start");
}

exit(0);
