#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/apktool ] ; then
	echo -e "Package: apktool (not installed)"
else
	echo -e "Package: apktool (installed)"
fi
echo
echo -e "Version: 2.3.1"
echo -e "Homepage: https://ibotpeaches.github.io/Apktool"
echo
echo -e "Dependencies: java"
echo
echo -e "Description: A tool for reverse engineering 3rd party, closed, binary Android apps."
