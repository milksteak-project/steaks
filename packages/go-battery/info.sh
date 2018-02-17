#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/go-battery ] ; then
	echo -e "Package: go-battery (not installed)"
else
	echo -e "Package: go-battery (installed)"
fi
echo
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/Code-Hex/battery"
echo
echo -e "Dependencies: golang"
echo
echo -e "Description: Draw battery unicode art on your tmux sessions or the terminal."
