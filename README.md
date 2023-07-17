# Setup a bitcoind service on Debian (12) like system without using systemd

`cp bitcoin.conf /etc/bitcoin.conf`
`cp bitcoin /etc/init.d/bitcoin`
`update-rc.d bitcoin defaults`
`/etc/init.d/bitcoin start`
`tail -f /.bitcoin/debug.log`
