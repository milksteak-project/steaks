#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/go-mtpfs ]; then
	echo -e "${RED}Package:${NC} go-mtpfs (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} go-mtpfs (installed)${NC}"
fi
echo -e "${RED}Version:${NC} 1.4${NC}"
echo -e "${RED}Homepage:${NC} https://github.com/hanwen/go-mtpfs${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}Go-mtpfs is a simple FUSE filesystem for mounting Android devices as a MTP device. It will expose all storage areas of a device in the mount, and only reads file metadata as needed, making it mount quickly. It uses Android extensions to read/write partial data, so manipulating large files requires no extra space in /tmp.

It has been tested on various flagship devices (Galaxy Nexus, Xoom, Nexus 7). As of Jan. 2013, it uses a pure Go implementation of MTP, which is based on libusb.${NC}"

echo -e "${RED}Dependencies:"
if [ -d /usr/local/opt/libusb -a -d /usr/local/opt/libmtp ];then
	echo -e "${GREEN}libusb (installed) libmtp (installed)${NC}"
elif [ -d /usr/local/opt/libusb -a ! -d /usr/local/opt/libmtp ];then
		echo -e "${GREEN}libusb (installed) ${NC}libmtp (not installed)${NC}"
elif [ -d ! /usr/local/opt/libusb -a -d /usr/local/opt/libmtp ];then
		echo -e "${NC}libusb (not installed) ${GREEN}libmtp (installed)${NC}"
else
	echo -e "${NC}libusb (not installed) libmtp (not installed)${NC}"
fi
