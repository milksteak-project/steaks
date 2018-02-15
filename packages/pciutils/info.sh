#!/usr/bin/env bash

echo
if [ ! -f $HOME/usr/lib/libpci.a ] ; then
	echo -e "Package: pciutils (not installed)"
else
	echo -e "Package: pciutils (installed)"
fi
echo -e "Version: 3.5.6"
echo -e "Homepage: https://github.com/pciutils/pciutils"
echo -e "Description: A library for portable access to PCI bus configuration registers and several utilities based on this library."
echo -e "Dependencies: directhw"
echo
