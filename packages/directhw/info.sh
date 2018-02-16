#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/directhw ] ; then
	echo -e "Package: directhw (not installed)"
else
	echo -e "Package: directhw (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://www.coreboot.org/DirectHW"
echo -e "          https://github.com/sigma-1/directhw"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: DirectHW is a software compatibility layer for Mac OS X. It provides a kernel driver and framework that emulates the most commonly used hardware access functions on x86 machines."
echo -e "Notes: Milksteak does not load the DirectHW kext and libraries by default, but you can easily load/unload the kext using the 'directhw' command."
