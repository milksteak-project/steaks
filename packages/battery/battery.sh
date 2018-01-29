#!/bin/bash

# -- Install dependencies
DEPS="golang"

if [ ! -f /usr/local/bin/go ]; then
	echo -e "${RED}>>>>>>>>${NC} battery-v0.2.0 depends on the following packages:${NC}"
	echo -e "${RED}> ${NC}golang (not installed)${NC}"
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
	echo -e "${RED}>>>>>>>>${NC} battery-v0.2.0 depends on the following packages:${NC}"
	echo -e "${GREEN}> golang (installed)${NC}"
	sleep 1
fi

# -- Install battery
mkdir $HOME/usr/tmp/battery
export GOPATH=$HOME/usr/tmp/battery
echo -e "${RED}>>>>>>>> ${NC}Installing battery-v0.2.0{NC}"
go get -u github.com/Code-Hex/battery/cmd/battery
sleep 1
mv $HOME/usr/tmp/battery/bin/battery $HOME/usr/bin/battery
sleep 1
echo -e "${GREEN}Done!${NC}"
sleep 1
echo -e "${NC}battery-v0.2.0 has been installed to:${NC}"
sleep 1
echo -e "${GREEN}> $HOME/usr/bin/battery${NC}"
sleep 1

# -- Cleanup
rm -rf $HOME/usr/tmp/battery

printf '\e[1;31m%*s\e[m' "${COLUMNS:-$(tput cols)}" '' | tr ' ' =
echo -e "${NC}"
