#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/headers-compat ] ; then
	echo -e "Package: headers-compat (not installed)"
else
	echo -e "Package: headers-compat (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/sigma-1/headers-compat"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: Compatibility headers for converting BSD/Linux macros to their Darwin equivilents."
