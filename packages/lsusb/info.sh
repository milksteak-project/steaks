#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/lsusb ]; then
	echo -e "${RED}Package:${NC} lsusb (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} lsusb (installed)${NC}"
fi
echo -e "${RED}Version:${NC} 1.0.21${NC}"
echo -e "${RED}Homepage:${NC} http://libusb.info/${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}A utility for displaying information about USB buses in the system and the devices connected to them.${NC}"

echo -e "${RED}Dependencies:"
if [ -d /usr/local/opt/libusb -a -d /usr/local/opt/libftdi ];then
	echo -e "${GREEN}libusb (installed) libftdi (installed)${NC}"
elif [ -d /usr/local/opt/libusb -a ! -d /usr/local/opt/libftdi ];then
	echo -e "${GREEN}libusb (installed) ${NC}libftdi (not installed)${NC}"
elif [ -d ! /usr/local/opt/libusb -a -d /usr/local/opt/libftdi ];then
	echo -e "${NC}libusb (not installed) ${GREEN}libftdi (installed)${NC}"
else
	echo -e "${NC}libusb (not installed) libftdi (not installed)${NC}"
fi
