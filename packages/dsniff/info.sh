#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ ! -f $HOME/usr/sbin/dsniff ]; then
	echo -e "${RED}Package:${NC} dsniff (not installed)${NC}"
else
	echo -e "${RED}Package:${GREEN} dsniff (installed)${NC}"
fi
echo -e "${RED}Version:${NC} 2.4b1${NC}"
echo -e "${RED}Homepage:${NC} https://www.monkey.org/~dugsong/dsniff${NC}"

echo -e "${RED}Description:${NC}"
echo -e "${NC}dsniff is a collection of tools for network auditing and penetration testing. dsniff, filesnarf, mailsnarf, msgsnarf, urlsnarf, and webspy passively monitor a network for interesting data (passwords, e-mail, files, etc.). arpspoof, dnsspoof, and macof facilitate the interception of network traffic normally unavailable to an attacker (e.g, due to layer-2 switching). sshmitm and webmitm implement active monkey-in-the-middle attacks against redirected SSH and HTTPS sessions by exploiting weak bindings in ad-hoc PKI.${NC}"

echo -e "${RED}Dependencies:"
echo -e "${NC}libnet libnids libpcap openssl${NC}"
