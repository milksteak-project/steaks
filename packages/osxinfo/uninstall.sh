#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# -- Uninstall
printf '\e[1;31m%*s\n\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${RED}>>>>>>>> ${NC}Uninstalling osxinfo${NC}"
echo -e "${RED}rm $HOME/usr/bin/osxinfo${NC}"
rm $HOME/usr/bin/osxinfo
echo -e "${RED}rm -rf $HOME/usr/etc/packages/osxinfo${NC}"
rm -rf $HOME/usr/etc/packages/osxinfo
echo -e "${GREEN}osxinfo has been uninstalled!${NC}"
printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"