#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/kismac ]; then
	echo -e "Package: kismac (not installed)"
else
	echo -e "Package: kismac (installed)"
fi
echo
echo -e "Version: KisMac2"
echo -e "Homepage: http://igrsoft.com/en/kismac2"
echo -e "          https://github.com/IGRSoft/KisMac2"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: KisMAC is a free, open source wireless stumbling and security tool for Mac OS X."
