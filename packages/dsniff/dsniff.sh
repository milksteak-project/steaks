#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

DOWNLOAD_FOLDER=$HOME/usr/tmp

# -- Install dependencies
DEPS="libnet libnids libpcap openssl"
brew install $DEPS

# -- Check and download the release
echo -e "${RED}>>>>>>>> ${NC}Downloading dsniff-2.4b1-darwin_x86_64.tar.gz${NC}"
test -e dsniff-2.4b1-darwin_x86_64.tar.gz || wget -O $DOWNLOAD_FOLDER/dsniff-2.4b1-darwin_x86_64.tar.gz https://github.com/sigma-1/dsniff/archive/2.4b1-darwin_x86_64.tar.gz -q --show-progress
echo -e "${NC}dsniff-2.4b1-darwin_x86_64.tar.gz has been downloaded to:${NC}"
sleep 1
echo -e "${GREEN}> $DOWNLOAD_FOLDER/dsniff-2.4b1-darwin_x86_64.tar.gz${NC}"
sleep 1

# -- Unpack the release
echo -e "${RED}>>>>>>>> ${NC}Unpacking dsniff-2.4b1-darwin_x86_64.tar.gz${NC}"
cd $DOWNLOAD_FOLDER
pv dsniff-2.4b1-darwin_x86_64.tar.gz | tar xz
echo -e "${NC}dsniff-2.4b1-darwin_x86_64.tar.gz has been unpacked to:${NC}"
echo -e "${GREEN}> $DOWNLOAD_FOLDER/dsniff-2.4b1-darwin_x86_64${NC}"

# -- Build dsniff
echo -e "${RED}>>>>>>>> ${NC}Building dsniff${NC}"
cd $DOWNLOAD_FOLDER/dsniff-2.4b1-darwin_x86_64

function build_dsniff() {
	cd $DOWNLOAD_FOLDER/dsniff-2.4b1-darwin_x86_64
	./configure --with-libpcap=/usr/local/opt/libpcap --with-openssl=/usr/local/opt/openssl --with-libnet=/usr/local/opt/libnet --with-libnids=/usr/local/opt/libnids --without-x --prefix=$HOME/usr --datarootdir=$HOME/usr/share --mandir=$HOME/usr/share/man
	make
}

build_dsniff &> /dev/null

sleep 1
echo -e "${GREEN}Done!${NC}"

# -- Install
echo -e "${RED}>>>>>>>> ${NC}Installing dsniff${NC}"

function install_dsniff() {
	cd $DOWNLOAD_FOLDER/dsniff-2.4b1-darwin_x86_64
	make install
}

install_dsniff &> /dev/null

sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}dsniff has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr${NC}"
sleep 1

# -- Cleanup
cd $DOWNLOAD_FOLDER
rm dsniff-2.4b1-darwin_x86_64.tar.gz
rm -rf dsniff-2.4b1-darwin_x86_64

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
