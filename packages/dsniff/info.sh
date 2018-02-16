#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/dsniff ] ; then
	echo -e "Package: dsniff (not installed)"
else
	echo -e "Package: dsniff (installed)"
fi
echo -e "Version: 2.4b1"
echo -e "Homepage: https://www.monkey.org/~dugsong/dsniff"
echo -e "Description: A collection of tools for network auditing and penetration testing."
echo -e "Dependencies: libnet libnids libpcap openssl"
echo
