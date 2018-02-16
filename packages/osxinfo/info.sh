#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/osxinfo ]; then
	echo -e "Package: osxinfo (not installed)"
else
	echo -e "Package: osxinfo (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/nbyouri/osxinfo"
echo -e "          https://github.com/sigma-1/osxinfo"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: A fast info program written in C."
