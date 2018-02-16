#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/lsusb ] ; then
	echo -e "Package: lsusb (not installed)"
else
	echo -e "Package: lsusb (installed)"
fi
echo
echo -e "Version: 1.0.21"
echo -e "Homepage: http://libusb.info"
echo
echo -e "Dependencies: libusb libftdi"
echo
echo -e "Description: A utility for displaying information about USB buses in the system and the devices connected to them."
