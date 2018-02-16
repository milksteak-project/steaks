#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/csrstat ]; then
	echo -e "Package: csrstat (not installed)"
else
	echo -e "Package: csrstat (installed)"
fi
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/Piker-Alpha/csrstat"
echo -e "Description: Command line tool to get the active System Integrity Protection status."
echo -e "Dependencies: None"
echo
