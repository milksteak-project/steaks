#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/ctools ]; then
	echo -e "Package: ctools (not installed)"
else
	echo -e "Package: ctools (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/mist64/ctools"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: Programs for accessing C64 and C128 CP/M disk images (*.D64)."
