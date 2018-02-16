#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/tiv ]; then
	echo -e "Package: tiv (not installed)"
else
	echo -e "Package: tiv (installed)"
fi
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/stefanhaustein/TerminalImageViewer"
echo -e "Description: TerminalImageViewer (tiv) is a small C++ program to display images in a terminal using RGB ANSI codes and unicode block graphic characters."
echo -e "Dependencies: None"
echo
