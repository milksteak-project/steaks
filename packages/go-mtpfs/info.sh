#!/usr/bin/env bash

echo
if [ ! -f $HOME/usr/bin/go-mtpfs ] ; then
	echo -e "Package: go-mtpfs (not installed)"
else
	echo -e "Package: go-mtpfs (installed)"
fi
echo
echo -e "Version: 1.4"
echo -e "Homepage: https://github.com/hanwen/go-mtpfs"
echo -e "Description: Go-mtpfs is a simple FUSE filesystem for mounting Android devices as a MTP device."
echo -e "Dependencies: golang osxfuse libusb libmtp"
echo
