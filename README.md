# Setup a bitcoind service on Debian (12) like system without using systemd

`cp bitcoin /etc/init.d/bitcoin`  
`cp bitcoin.conf /etc/bitcoin.conf`  
`update-rc.d bitcoin defaults`  
`/etc/init.d/bitcoin start`  
`tail -f /.bitcoin/debug.log`  

