#!/usr/bin/env bash

PACKAGE="metagoofil"
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
	git clone https://github.com/laramies/metagoofil.git $HOME/usr/opt/python/metagoofil
	sed -i "1i\
#!/usr/bin/env python" $HOME/usr/opt/python/metagoofil/metagoofil.py
	cd $HOME/usr/opt/python/metagoofil ; chmod 755 metagoofil.py
	ln -s $HOME/usr/opt/python/metagoofil/metagoofil.py $HOME/usr/bin/metagoofil
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
