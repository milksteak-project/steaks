#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/pciutils ] ; then
	echo -e "Package: pciutils (not installed)"
else
	echo -e "Package: pciutils (installed)"
fi
echo
echo -e "Version: 3.5.6"
echo -e "Homepage: https://github.com/pciutils/pciutils"
echo
echo -e "Dependencies: directhw"
echo
echo -e "Description: A library for portable access to PCI bus configuration registers and several utilities based on this library."
