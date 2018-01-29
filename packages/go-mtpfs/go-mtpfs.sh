#!/bin/bash

# -- Install dependencies

if [ ! -f /usr/local/bin/go -a ! -f /Library/Filesystems/osxfuse.fs ]; then
	echo -e "${RED}>>>>>>>>${NC} go-mtpfs depends on the following packages:${NC}"
	echo -e "${RED}> ${NC}golang (not installed) osxfuse (not installed)${NC}"
	while true
	do
	  read -r -p "Would you like to install these dependencies now? (y/n) " choice
	    case "$choice" in
	      n|N)	break;;
	      y|Y)	brew install golang
				brew cask install osxfuse
	      		break;;
	      *)	echo -e "Invalid argument.";;
		esac
	done
elif [ -f /usr/local/bin/go -a ! -f /Library/Filesystems/osxfuse.fs ]; then
	echo -e "${RED}>>>>>>>>${NC} go-mtpfs depends on the following packages:${NC}"
	echo -e "${RED}> ${GREEN}golang (installed) ${NC}osxfuse (not installed)${NC}"
	while true
	do
	  read -r -p "Would you like to install these dependencies now? (y/n) " choice
	    case "$choice" in
	      n|N)	break;;
	      y|Y)	brew cask install osxfuse
	      		break;;
	      *)	echo -e "Invalid argument.";;
		esac
	done
elif [ ! -f /usr/local/bin/go -a -f /Library/Filesystems/osxfuse.fs ]; then
	echo -e "${RED}>>>>>>>>${NC} go-mtpfs depends on the following packages:${NC}"
	echo -e "${RED}> ${NC}golang (not installed) ${GREEN}osxfuse (installed)${NC}"
	while true
	do
	  read -r -p "Would you like to install these dependencies now? (y/n) " choice
	    case "$choice" in
	      n|N)	break;;
	      y|Y)	brew install golang
	      		break;;
	      *)	echo -e "Invalid argument.";;
		esac
	done
else
	echo -e "${RED}>>>>>>>>${NC} go-mtpfs depends on the following packages:${NC}"
	echo -e "${GREEN}> golang (installed) osxfuse (installed)${NC}"
	sleep 1
fi

# -- Install go-mtpfs
mkdir $HOME/usr/tmp/go-mtpfs
export GOPATH=$HOME/usr/tmp/go-mtpfs
echo -e "${RED}>>>>>>>> ${NC}Installing go-mtpfs{NC}"
go get -u github.com/hanwen/go-mtpfs
sleep 1
mv $HOME/usr/tmp/go-mtpfs/bin/go-mtpfs $HOME/usr/bin/go-mtpfs
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}go-mtpfs has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/go-mtpfs${NC}"
sleep 1

# -- Cleanup
rm -rf $HOME/usr/tmp/go-mtpfs

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
