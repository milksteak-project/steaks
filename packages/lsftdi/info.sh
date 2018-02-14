#!/usr/bin/env bash

echo
if [ ! -f $HOME/usr/bin/lsftdi ]; then
	echo -e "Package: lsftdi (not installed)"
else
	echo -e "Package: lsftdi"
fi
echo -e "Version: 1.4"
echo -e "Homepage: https://www.intra2net.com/en/developer/libftdi"
echo -e "Description: A utility for listing FTDI chips."
echo -e "Dependencies: libusb libftdi"
echo
