#!/usr/bin/env bash

echo
if [ ! -d $HOME/usr/etc/packages/smali ] ; then
	echo -e "Package: smali (not installed)"
else
	echo -e "Package: smali (installed)"
fi
echo -e "Version: 2.2.2"
echo -e "Homepage: https://github.com/JesusFreke/smali"
echo -e "Description: An assembler/disassembler for the dex format used by dalvik, Android's Java VM implementation."
echo -e "Dependencies: java"
echo
