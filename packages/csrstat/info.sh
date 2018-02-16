#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/csrstat ] ; then
	echo -e "Package: csrstat (not installed)"
else
	echo -e "Package: csrstat (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/Piker-Alpha/csrstat"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: Command line tool to get the active System Integrity Protection status."
