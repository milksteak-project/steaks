#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

VER=1.0.21
LSUSB=lsusb-$VER
LIBUSB=libusb-$VER
TAR_LIBUSB=$LIBUSB.tar.bz2
REL_LIBUSB=https://github.com/libusb/libusb/releases/download/v$VER/$TAR_LIBUSB
DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Install dependencies
#DEPS="pkg-config libusb libftdi wget"
#brew update
#brew install --force $DEPS
#brew unlink $DEPS && brew link --force $DEPS
# TODO

# -- Check and download the release
echo -e "${RED}>>>>>>>> ${NC}Downloading $TAR_LIBUSB${NC}"
test -e $TAR_LIBUSB || wget -O $DOWNLOAD_FOLDER/$TAR_LIBUSB $REL_LIBUSB -q --show-progress
echo -e "${NC}$TAR_LIBUSB has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$TAR_LIBUSB${NC}"
sleep 1

# -- Unpack the release
echo -e "${RED}>>>>>>>> ${NC}Unpacking $TAR_LIBUSB${NC}"
cd $DOWNLOAD_FOLDER
pv $TAR_LIBUSB | tar xpj
echo -e "${NC}$TAR_LIBUSB has been unpacked to:${NC}"
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$LIBUSB${NC}"

# -- Build lsusb
echo -e "${RED}>>>>>>>> ${NC}Building $LSUSB${NC}"
cd $DOWNLOAD_FOLDER/$LIBUSB/examples

ARCH="darwin"
DARWINVERSION=`uname -r`

if [ -f /usr/local/bin/x86_64-apple-darwin$DARWINVERSION-gcc-7 ];then
	CC="x86_64-apple-darwin$DARWINVERSION-gcc-7"
else
	CC="/usr/bin/gcc"
fi

$CC -o lsusb listdevs.c -lusb-1.0 -I../libusb

sleep 1
echo -e "${GREEN}Done!${NC}"

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing $LSUSB${NC}"
cp lsusb $HOME/usr/bin/lsusb
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}$LSUSB has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/lsusb${NC}"
sleep 1

# -- Cleanup
cd $DOWNLOAD_FOLDER
rm $TAR_LIBUSB
rm -rf $LIBUSB

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
