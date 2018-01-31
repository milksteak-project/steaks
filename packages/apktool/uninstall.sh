#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# -- Uninstall
printf '\e[1;31m%*s\n\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${RED}>>>>>>>> ${NC}Uninstalling apktool${NC}"
echo -e "${RED}rm -rf $HOME/usr/opt/java/apktool_2.3.1${NC}"
rm -rf $HOME/usr/opt/java/apktool_2.3.1
echo -e "${RED}rm $HOME/usr/bin/apktool${NC}"
rm $HOME/usr/bin/apktool
echo -e "${RED}rm -rf $HOME/usr/etc/packages/apktool${NC}"
rm -rf $HOME/usr/etc/packages/apktool
echo -e "${GREEN}apktool has been uninstalled!${NC}"
printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
