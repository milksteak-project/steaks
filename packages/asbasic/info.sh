#!/usr/bin/env bash

echo
if [ ! -f $HOME/usr/bin/asbasic ] ; then
	echo -e "Package: asbasic (not installed)"
else
	echo -e "Package: asbasic (installed)"
fi
echo -e "Version: 2.5"
echo -e "Homepage: https://github.com/sigma-1/asbasic"
echo -e "Description: An interpreter for the classic dialect of the programming language BASIC. Based on Bas 2.4."
echo -e "Dependencies: None"
echo
