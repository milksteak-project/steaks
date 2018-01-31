#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/battery ]; then
	echo -e "${RED}Package:${NC} battery (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} battery (installed)${NC}"
fi
echo -e "${RED}Version:${NC} Not applicable${NC}"
echo -e "${RED}Homepage:${NC} https://github.com/Code-Hex/battery${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}Draw battery unicode art on your tmux sessions or the terminal.${NC}"

echo -e "${RED}Dependencies:"
echo -e "${NC}None${NC}"
