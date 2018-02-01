#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# -- Uninstall
printf '\e[1;31m%*s\n\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${RED}>>>>>>>> ${NC}Uninstalling smali${NC}"
echo -e "${RED}rm -rf $HOME/usr/opt/java/smali-2.2.2${NC}"
rm -rf $HOME/usr/opt/java/smali-2.2.2
echo -e "${RED}rm $HOME/usr/bin/smali${NC}"
rm $HOME/usr/bin/smali
echo -e "${RED}rm $HOME/usr/bin/baksmali${NC}"
rm $HOME/usr/bin/baksmali
echo -e "${RED}rm -rf $HOME/usr/etc/packages/smali${NC}"
rm -rf $HOME/usr/etc/packages/smali
echo -e "${GREEN}smali has been uninstalled!${NC}"
printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
