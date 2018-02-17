#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/gapa ] ; then
	echo -e "Package: gapa (not installed)"
else
	echo -e "Package: gapa (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/ozlerhakan/gapa"
echo
echo -e "Dependencies: python3 rumps py2app"
echo
echo -e "Description: A macOS utility that enables you to hide files and folders located on your desktop."
