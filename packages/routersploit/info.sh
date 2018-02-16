#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/routersploit ] ; then
	echo -e "Package: routersploit (not installed)"
else
	echo -e "Package: routersploit (installed)"
fi
echo
echo -e "Version: 2.2.1"
echo -e "Homepage: https://github.com/reverse-shell/routersploit"
echo
echo -e "Dependencies: python"
echo
echo -e "Description: The RouterSploit Framework is an open-source exploitation framework dedicated to embedded devices."
