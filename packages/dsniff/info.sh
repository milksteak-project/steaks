#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/dsniff ] ; then
	echo -e "Package: dsniff (not installed)"
else
	echo -e "Package: dsniff (installed)"
fi
echo
echo -e "Version: 2.4b1"
echo -e "Homepage: https://www.monkey.org/~dugsong/dsniff"
echo
echo -e "Dependencies: libnet libnids libpcap openssl"
echo
echo -e "Description: A collection of tools for network auditing and penetration testing."
