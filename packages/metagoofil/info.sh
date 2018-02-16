#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/metagoofil ] ; then
	echo -e "Package: metagoofil (not installed)"
else
	echo -e "Package: metagoofil (installed)"
fi
echo
echo -e "Version: 2.2"
echo -e "Homepage: http://www.edge-security.com/"
echo -e "          https://github.com/laramies/metagoofil"
echo
echo -e "Dependencies: python"
echo
echo -e "Description: Metagoofil is a tool for extracting metadata of public documents (pdf,doc,xls,ppt,etc) available in the target websites."
