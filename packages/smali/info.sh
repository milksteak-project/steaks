#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/smali ] ; then
	echo -e "Package: smali (not installed)"
else
	echo -e "Package: smali (installed)"
fi
echo
echo -e "Version: 2.2.2"
echo -e "Homepage: https://github.com/JesusFreke/smali"
echo
echo -e "Dependencies: java"
echo
echo -e "Description: An assembler/disassembler for the dex format used by dalvik, Android's Java VM implementation."
