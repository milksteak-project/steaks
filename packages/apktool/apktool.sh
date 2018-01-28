#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

VER=2.3.1
APKTOOL=apktool_$VER
JAR_APKTOOL=$APKTOOL.jar
REL_APKTOOL=https://github.com/iBotPeaches/Apktool/releases/download/v$VER/$JAR_APKTOOL
DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Install dependencies
DEPS="java"

if [ ! -d /Library/Java/Home ]; then
	echo -e "${RED}>>>>>>>>${NC} $APKTOOL depends on the following packages:${NC}"
	echo -e "${RED}> ${NC}java (not installed)${NC}"
	while true
	do
	  read -r -p "Would you like to install these dependencies now? (y/n) " choice
	    case "$choice" in
	      n|N)	break;;
	      y|Y)	brew cask install $DEPS
	      		break;;
	      *)	echo -e "Invalid argument.";;
		esac
	done
else
	echo -e "${RED}>>>>>>>>${NC} $APKTOOL depends on the following packages:${NC}"
	echo -e "${GREEN}> java (installed)${NC}"
	sleep 1
fi

# -- Check and download the release
echo -e "${RED}>>>>>>>> ${NC}Downloading $JAR_APKTOOL${NC}"
test -e $JAR_APKTOOL || wget -O $DOWNLOAD_FOLDER/$JAR_APKTOOL $REL_APKTOOL -q --show-progress
echo -e "${NC}$JAR_APKTOOL has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$JAR_APKTOOL${NC}"
sleep 1

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing $JAR_APKTOOL${NC}"
mkdir -p $HOME/usr/opt/java/$APKTOOL
DESTDIR=$HOME/usr/opt/java/$APKTOOL
mv $DOWNLOAD_FOLDER/$JAR_APKTOOL $DESTDIR/apktool.jar
cat $HOME/usr/libexec/steak-jarstub $DESTDIR/apktool.jar > $HOME/usr/bin/apktool && chmod 755 $HOME/usr/bin/apktool
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}$APKTOOL has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $DESTDIR/apktool.jar${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/apktool${NC}"
sleep 1

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
