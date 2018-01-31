#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/tiv ]; then
	echo -e "${RED}Package:${NC} tiv (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} tiv (installed)${NC}"
fi
echo -e "${RED}Version:${NC} Not applicable${NC}"
echo -e "${RED}Homepage:${NC} https://github.com/stefanhaustein/TerminalImageViewer${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}TerminalImageViewer (tiv) is a small C++ program to display images in a terminal using RGB ANSI codes and unicode block graphic characters.${NC}"

echo -e "${RED}Dependencies:"
echo -e "${NC}None${NC}"
