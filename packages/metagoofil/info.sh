#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/metagoofil ] ; then
	echo -e "Package: metagoofil (not installed)"
else
	echo -e "Package: metagoofil (installed)"
fi
echo
echo -e "Version: 2.2"
echo -e "Homepage: http://www.edge-security.com/"
echo -e "          https://github.com/laramies/metagoofil"
echo -e "Description: Metagoofil is a tool for extracting metadata of public documents (pdf,doc,xls,ppt,etc) availables in the target websites."
echo -e "Dependencies: python"
echo
