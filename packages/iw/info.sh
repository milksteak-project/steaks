#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/iw ] ; then
	echo -e "Package: iw (not installed)"
else
	echo -e "Package: iw (installed)"
fi
echo
echo -e "Version: 4.14-dirty"
echo -e "Homepage: http://git.sipsolutions.net/iw.git"
echo -e "          https://github.com/sigma-1/iw.git"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: A tool to use nl80211."
echo -e "Notes: This is a port of iw for Linux. Limited functionality."
