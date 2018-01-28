#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

VER=1.4
LSFTDI=lsftdi-$VER
LIBFTDI1=libftdi1-$VER
TAR_LIBFTDI1=$LIBFTDI1.tar.bz2
REL_LIBFTDI1=https://www.intra2net.com/en/developer/libftdi/download/$TAR_LIBFTDI1
DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Install dependencies
#DEPS="pkg-config libusb libftdi wget"
#brew update
#brew install --force $DEPS
#brew unlink $DEPS && brew link --force $DEPS
# TODO

# -- Check and download the release
test -e $TAR_LIBFTDI1 || wget -O $DOWNLOAD_FOLDER/$TAR_LIBFTDI1 $REL_LIBFTDI1 -q --show-progress

# -- Unpack the release
echo -e "${RED}>>>>>>>> ${NC}Unpacking $TAR_LIBFTDI1{NC}"
cd $DOWNLOAD_FOLDER
pv $TAR_LIBFTDI1 | tar xpj
echo -e "${NC}$TAR_LIBFTDI1 has been unpacked to:${NC}"
echo -e "${GREEN}> $DOWNLOAD_FOLDER/$LIBFTDI1${NC}"

# -- Build lsftdi
echo -e "${RED}>>>>>>>> ${NC}Building $LSFTDI${NC}"
cd $DOWNLOAD_FOLDER/$LIBFTDI1/examples

ARCH="darwin"
DARWINVERSION=`uname -r`

if [ -f /usr/local/bin/x86_64-apple-darwin$DARWINVERSION-gcc-7 ];then
	CC="x86_64-apple-darwin$DARWINVERSION-gcc-7"
else
	CC="/usr/bin/gcc"
fi

$CC -o lsftdi find_all.c -lftdi1 -lusb-1.0 -I../src

sleep 1
echo -e "${GREEN}Done!${NC}"

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing $LSFTDI${NC}"
mv lsftdi $HOME/usr/bin/lsftdi
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}$LSFTDI has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/lsftdi${NC}"
sleep 1

# -- Cleanup
cd $DOWNLOAD_FOLDER
rm $TAR_LIBFTDI1
rm -rf $LIBFTDI1

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
