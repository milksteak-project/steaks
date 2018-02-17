#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/filewatcher ]; then
	echo -e "Package: filewatcher (not installed)"
else
	echo -e "Package: filewatcher (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/meliot/filewatcher"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: Filewatcher is an auditing and monitoring utility for macOS."
