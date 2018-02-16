#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/trape ] ; then
	echo -e "Package: trape (not installed)"
else
	echo -e "Package: trape (installed)"
fi
echo
echo -e "Version: 1.0.0"
echo -e "Homepage: https://github.com/boxug/trape"
echo -e "Description: Trape is a recognition tool that allows you to track people, the information you can get is very detailed. We want to teach the world through this, as large Internet companies could monitor you, obtaining information beyond your IP."
echo -e "Dependencies: python"
echo
