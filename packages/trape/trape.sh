#!/usr/bin/env bash

PACKAGE="trape"
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
	git clone https://github.com/boxug/trape.git $HOME/usr/opt/python/trape
	cd $HOME/usr/opt/python/trape ; chmod 755 trape.py ; pip install -r requirements.txt
	ln -s $HOME/usr/opt/python/trape/trape.py $HOME/usr/bin/trape
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
