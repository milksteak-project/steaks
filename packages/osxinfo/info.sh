#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/osxinfo ]; then
	echo -e "Package: osxinfo (not installed)"
else
	echo -e "Package: osxinfo (installed)"
fi
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/nbyouri/osxinfo, https://github.com/sigma-1/osxinfo"
echo -e "Description: A fast info program written in C."
echo -e "Dependencies: None"
echo
