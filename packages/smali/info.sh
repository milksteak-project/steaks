#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/bin/apktool ]; then
	echo -e "${RED}Package:${NC} smali (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} smali (installed)${NC}"
fi
echo -e "${RED}Version:${NC} 2.2.2${NC}"
echo -e "${RED}Homepage:${NC} https://github.com/JesusFreke/smali${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}smali/baksmali is an assembler/disassembler for the dex format used by dalvik, Android's Java VM implementation. The syntax is loosely based on Jasmin's/dedexer's syntax, and supports the full functionality of the dex format (annotations, debug info, line info, etc.)${NC}"

echo -e "${RED}Dependencies:"
if [ ! -d /Library/Java/Home ]; then
	echo -e "${NC}java (not installed)${NC}"
else
	echo -e "${GREEN}java (installed)${NC}"
fi
