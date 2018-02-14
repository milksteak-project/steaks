#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# -- Uninstall
printf '\e[1;31m%*s\n\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${RED}>>>>>>>> ${NC}Uninstalling dsniff${NC}"
rm $HOME/usr/sbin/arpspoof
rm $HOME/usr/sbin/dnsspoof
rm $HOME/usr/sbin/dsniff
rm $HOME/usr/sbin/filesnarf
rm $HOME/usr/sbin/macof
rm $HOME/usr/sbin/mailsnarf
rm $HOME/usr/sbin/msgsnarf
rm $HOME/usr/sbin/sshmitm
rm $HOME/usr/sbin/sshow
rm $HOME/usr/sbin/tcpkill
rm $HOME/usr/sbin/tcpnice
rm $HOME/usr/sbin/urlsnarf
rm $HOME/usr/sbin/webmitm
rm $HOME/usr/share/man/man8/arpspoof.8
rm $HOME/usr/share/man/man8/dnsspoof.8
rm $HOME/usr/share/man/man8/dsniff.8
rm $HOME/usr/share/man/man8/filesnarf.8
rm $HOME/usr/share/man/man8/macof.8
rm $HOME/usr/share/man/man8/mailsnarf.8
rm $HOME/usr/share/man/man8/msgsnarf.8
rm $HOME/usr/share/man/man8/sshmitm.8
rm $HOME/usr/share/man/man8/sshow.8
rm $HOME/usr/share/man/man8/tcpkill.8
rm $HOME/usr/share/man/man8/tcpnice.8
rm $HOME/usr/share/man/man8/urlsnarf.8
rm $HOME/usr/share/man/man8/webmitm.8
rm $HOME/usr/share/man/man8/webspy.8
rm -rf $HOME/usr/share/dsniff
rm -rf $HOME/usr/etc/packages/dsniff
echo -e "${GREEN}dsniff has been uninstalled!${NC}"
printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
