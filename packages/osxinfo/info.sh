#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/osxinfo ]; then
	echo -e "${RED}Package:${NC} osxinfo (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} osxinfo (installed)${NC}"
fi
echo -e "${RED}Version:${NC} Not applicable${NC}"
echo -e "${RED}Homepage:${NC} https://github.com/nbyouri/osxinfo${NC}"
echo -e "${RED}Fork:${NC}     https://github.com/sigma-1/osxinfo${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}A fast info program written in C.${NC}"

echo -e "${RED}Dependencies:"
echo -e "${NC}None${NC}"
