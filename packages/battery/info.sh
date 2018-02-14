#!/usr/bin/env bash

echo
if [ ! -f $HOME/usr/bin/battery ] ; then
	echo -e "Package: battery (not installed)"
else
	echo -e "Package: battery (installed)"
fi
echo -e "Version: Not applicable"
echo -e "Homepage: https://github.com/Code-Hex/battery"
echo -e "Description: Draw battery unicode art on your tmux sessions or the terminal."
echo -e "Dependencies: golang"
echo
