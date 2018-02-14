#!/bin/bash

if [ ! -f $HOME/usr/sbin/dsniff ] ; then
	echo -e "Package: dsniff (not installed)"
else
	echo -e "Package: dsniff (installed)"
fi
echo
echo -e "Version: 2.4b1"
echo -e "Homepage: https://www.monkey.org/~dugsong/dsniff"
echo
echo -e "Description:"
echo -e "dsniff is a collection of tools for network auditing and penetration testing."
echo
echo -e "Dependencies:"
echo -e "libnet libnids libpcap openssl${NC}"
echo
