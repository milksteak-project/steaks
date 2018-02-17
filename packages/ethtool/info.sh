#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/ethtool ] ; then
	echo -e "Package: ethtool (not installed)"
else
	echo -e "Package: ethtool (installed)"
fi
echo
echo -e "Version: 3.14"
echo -e "Homepage: https://www.kernel.org/pub/software/network/ethtool"
echo -e "          https://github.com/sigma-1/ethtool"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: The standard Linux utility for controlling network drivers and hardware, particularly for wired Ethernet devices."
