#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

TIV=TerminalImageViewer
ZIP_TIV=$TIV-master.zip
DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Install dependencies
DEPS="imagemagick"

if [ ! -d /usr/local/lib/ImageMagick ]; then
	echo -e "${RED}>>>>>>>>${NC} tiv depends on the following packages:${NC}"
	echo -e "${RED}> ${NC}imagemagick (not installed)${NC}"
	while true
	do
	  read -r -p "Would you like to install these dependencies now? (y/n) " choice
	    case "$choice" in
	      n|N)	break;;
	      y|Y)	brew install imagemagick
	      		break;;
	      *)	echo -e "Invalid argument.";;
		esac
	done
else
	echo -e "${RED}>>>>>>>>${NC} tiv depends on the following packages:${NC}"
	echo -e "${GREEN}> imagemagick (installed)${NC}"
	sleep 1
fi

# -- Check and download the release
echo -e "${RED}>>>>>>>> ${NC}Downloading $ZIP_TIV${NC}"
wget -O $DOWNLOAD_FOLDER/$ZIP_TIV https://github.com/stefanhaustein/TerminalImageViewer/archive/master.zip -q --show-progress
echo -e "${NC}$ZIP_TIV has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$ZIP_TIV${NC}"
sleep 1

# -- Unpack the release
echo -e "${RED}>>>>>>>> ${NC}Unpacking $ZIP_TIV${NC}"
cd $DOWNLOAD_FOLDER
unzip -o $ZIP_TIV | pv -l >/dev/null
echo -e "${NC}$ZIP_TIV has been unpacked to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$TIV-master${NC}"
sleep 1

# -- Build tiv
echo -e "${RED}>>>>>>>> ${NC}Building $TIV${NC}"
cd $DOWNLOAD_FOLDER/$TIV-master/src/main/cpp
make
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing $TIV${NC}"
cp tiv $HOME/usr/bin/tiv
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}$TIV has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/tiv${NC}"
sleep 1

# -- Cleanup
cd $DOWNLOAD_FOLDER
rm $ZIP_TIV
rm -rf $TIV-master

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
