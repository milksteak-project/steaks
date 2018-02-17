#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/cbmbasic ]; then
	echo -e "Package: cbmbasic (not installed)"
else
	echo -e "Package: cbmbasic (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/mist64/cbmbasic"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: A 100% compatible version of Commodore's version of Microsoft BASIC 6502 as found on the Commodore 64. You can use it in interactive mode or pass a BASIC file as a command line parameter."
