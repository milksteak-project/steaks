#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/repairpermissions ]; then
	echo -e "Package: repairpermissions (not installed)"
else
	echo -e "Package: repairpermissions"
fi
echo
echo -e "Version: 3.8.3200"
echo -e "Homepage: https://www.firewolf.science"
echo
echo -e "Dependencies: None"
echo
echo -e "Description: RepairPermissions is a command line tool written in Swift language to verify and repair permissions on Apple’s OS X and macOS. With newly designed APIs and data structure, RepairPermissions now supports verifying and repairing permissions on Apple’s latest macOS High Sierra!"
