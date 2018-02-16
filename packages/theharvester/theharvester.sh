#!/usr/bin/env bash

PACKAGE="theharvester"
DEPS="python"

# -- Install dependencies
#function install_dependencies() {
#	brew install $DEPS
#}
echo -e ">>>>> Installing dependencies..."
#install_dependencies &> /dev/null

# -- Install package
function install_package() {
	mkdir -p $HOME/usr/opt/python
	git clone https://github.com/laramies/theHarvester $HOME/usr/opt/python/theHarvester
	cd $HOME/usr/opt/python/theHarvester ; chmod 755 theHarvester.py ; pip install requests
	ln -s $HOME/usr/opt/python/theHarvester/theHarvester.py $HOME/usr/bin/theharvester
}
echo -e ">>>>> Fetching sources..."
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
#function cleanup() {
#	nothing to do here
#}
echo -e ">>>>> Cleaning up..."
#cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
echo
