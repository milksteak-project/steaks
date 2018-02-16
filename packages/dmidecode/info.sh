#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/dmidecode ] ; then
	echo -e "Package: dmidecode (not installed)"
else
	echo -e "Package: dmidecode (installed)"
fi
echo
echo -e "Version: 3.1"
echo -e "Homepage: http://www.nongnu.org/dmidecode/"
echo -e "          http://cavaliercoder.com/blog/dmidecode-for-apple-osx.html"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: A tool for dumping a computer's DMI table contents in a human-readable format."
