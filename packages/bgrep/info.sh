#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/bgrep ] ; then
	echo -e "Package: bgrep (not installed)"
else
	echo -e "Package: bgrep (installed)"
fi
echo -e "Version: 1.0"
echo -e "Homepage: http://debugmo.de/2009/04/bgrep-a-binary-grep/"
echo -e "          https://github.com/rsharo/bgrep"
echo -e "Description: Binary Grep."
echo -e "Dependencies: None"
echo
