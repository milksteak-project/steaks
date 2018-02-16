#!/usr/bin/env bash

echo
if [ ! -f $HOME/usr/lib/libpci.a ] ; then
	echo -e "Package: pciutils (not installed)"
else
	echo -e "Package: pciutils (installed)"
fi
echo -e "Version: 3.1"
echo -e "Homepage: http://www.nongnu.org/dmidecode/"
echo -e "          http://cavaliercoder.com/blog/dmidecode-for-apple-osx.html"
echo -e "Description: A tool for dumping a computer's DMI (some say SMBIOS ) table contents in a human-readable format."
echo
