#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/apktool ]; then
	echo -e "${RED}Package:${NC} apktool (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} apktool (installed)${NC}"
fi
echo -e "${RED}Version:${NC} 2.3.1${NC}"
echo -e "${RED}Homepage:${NC} https://ibotpeaches.github.io/Apktool/${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}A tool for reverse engineering 3rd party, closed, binary Android apps.${NC}"

echo -e "${RED}Dependencies:"
if [ ! -d /Library/Java/Home ]; then
	echo -e "${NC}java (not installed)${NC}"
else
	echo -e "${GREEN}java (installed)${NC}"
fi
