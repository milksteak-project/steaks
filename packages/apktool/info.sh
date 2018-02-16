#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/apktool ] ; then
	echo -e "Package: apktool (not installed)"
else
	echo -e "Package: apktool (installed)"
fi
echo -e "Version: 2.3.1"
echo -e "Homepage: https://ibotpeaches.github.io/Apktool"
echo -e "Description: A tool for reverse engineering 3rd party, closed, binary Android apps."
echo -e "Dependencies: java"
echo
