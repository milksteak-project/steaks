#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/cbmfs ]; then
	echo -e "Package: cbmfs (not installed)"
else
	echo -e "Package: cbmfs (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/mist64/cbmfs"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: A Commodore 1541 file system driver for MacFUSE. It is read-only, and there is no GUI integration."
