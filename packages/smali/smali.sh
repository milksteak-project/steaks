#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

VER=2.2.2
SMALI=smali-$VER
BAKSMALI=baksmali-$VER
JAR_SMALI=$SMALI.jar
JAR_BAKSMALI=$BAKSMALI.jar
REL_SMALI=https://bitbucket.org/JesusFreke/smali/downloads/$JAR_SMALI
REL_BAKSMALI=https://bitbucket.org/JesusFreke/smali/downloads/$JAR_BAKSMALI
DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Install dependencies
DEPS="java"

if [ ! -d /Library/Java/Home ]; then
	echo -e "${RED}>>>>>>>>${NC} $SMALI depends on the following packages:${NC}"
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
	echo -e "${RED}>>>>>>>>${NC} smali depends on the following packages:${NC}"
	echo -e "${GREEN}> java (installed)${NC}"
	sleep 1
fi

# -- Check and download the release
echo -e "${RED}>>>>>>>> ${NC}Downloading $JAR_SMALI${NC}"
test -e $JAR_SMALI || wget -O $DOWNLOAD_FOLDER/$JAR_SMALI $REL_SMALI -q --show-progress
echo -e "${RED}>>>>>>>> ${NC}Downloading $JAR_BAKSMALI${NC}"
test -e $JAR_BAKSMALI || wget -O $DOWNLOAD_FOLDER/$JAR_BAKSMALI $REL_BAKSMALI -q --show-progress
echo -e "${NC}$JAR_SMALI has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$JAR_BAKSMALI${NC}"
sleep 1
echo -e "${NC}$JAR_BAKSMALI has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$JAR_BAKSMALI${NC}"
sleep 1

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing $SMALI${NC}"
mkdir -p $HOME/usr/opt/java/$SMALI
DESTDIR=$HOME/usr/opt/java/$SMALI
mv $DOWNLOAD_FOLDER/$JAR_SMALI $DESTDIR/$JAR_SMALI
mv $DOWNLOAD_FOLDER/$JAR_BAKSMALI $DESTDIR/$JAR_BAKSMALI
cat $HOME/usr/libexec/steak-jarstub $DESTDIR/$JAR_SMALI > $HOME/usr/bin/smali && chmod 755 $HOME/usr/bin/smali
cat $HOME/usr/libexec/steak-jarstub $DESTDIR/$JAR_BAKSMALI > $HOME/usr/bin/baksmali && chmod 755 $HOME/usr/bin/baksmali
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}$SMALI has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $DESTDIR/$JAR_SMALI${NC}"
sleep 1
echo -e "${GREEN}> $DESTDIR/$JAR_BAKSMALI${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/smali${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/baksmali${NC}"
sleep 1

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
