#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/libnl ] ; then
	echo -e "Package: libnl (not installed)"
else
	echo -e "Package: libnl (installed)"
fi
echo
echo -e "Version: 2.0"
echo -e "Homepage: https://www.infradead.org/~tgr/libnl"
echo -e "          https://github.com/sigma-1/libnl"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: The libnl suite is a collection of libraries providing APIs to netlink protocol based Linux kernel interfaces."
echo -e "Notes: This is a port of the Linux Netlink Protocol Library Suite (libnl). Limited functionality."
