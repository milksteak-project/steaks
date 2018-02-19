#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/usbutils ] ; then
	echo -e "Package: usbutils (not installed)"
else
	echo -e "Package: usbutils (installed)"
fi
echo
echo -e "Version: 007"
echo -e "Homepage: https://github.com/gregkh/usbutils"
echo -e "          https://github.com/barisbalic/lsusb-osx"
echo
echo -e "Dependencies: libusb"
echo
echo -e "Description: Utilities for displaying information about USB buses in the system and the devices connected to them."
echo -e "Notes: Rough port for OS X. Limited functionality."
