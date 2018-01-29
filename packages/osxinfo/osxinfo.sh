#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

OSXI="osxinfo"
ZIP_OSXI=$OSXI-master.zip
DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Check and download the release
echo -e "${RED}>>>>>>>> ${NC}Downloading $ZIP_OSXI${NC}"
wget -O $DOWNLOAD_FOLDER/$ZIP_OSXI https://github.com/sigma-1/osxinfo/archive/master.zip -q --show-progress
echo -e "${NC}$ZIP_OSXI has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$ZIP_OSXI${NC}"
sleep 1

# -- Unpack the release
echo -e "${RED}>>>>>>>> ${NC}Unpacking $ZIP_OSXI${NC}"
cd $DOWNLOAD_FOLDER
unzip -o $ZIP_OSXI | pv -l >/dev/null
echo -e "${NC}$ZIP_OSXI has been unpacked to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$OSXI-master${NC}"
sleep 1

# -- Build osxinfo
echo -e "${RED}>>>>>>>> ${NC}Building $OSXI${NC}"
cd $DOWNLOAD_FOLDER/$OSXI-master
make
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing $OSXI${NC}"
cp $OSXI $HOME/usr/bin/$OSXI
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}$OSXI has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/$OSXI${NC}"
sleep 1

# -- Cleanup
cd $DOWNLOAD_FOLDER
rm $ZIP_OSXI
rm -rf $OSXI-master

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
