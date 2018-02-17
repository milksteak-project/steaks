#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/bedim ]; then
	echo -e "Package: bedim (not installed)"
else
	echo -e "Package: bedim (installed)"
fi
echo
echo -e "Version: 1.0.2"
echo -e "Homepage: https://github.com/victorgama/bedim"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: Bedim is a small MenuBar app that blurs your wallpapers when an application is visible. When there's nothing else on the screen, your wallpaper is then restored."
