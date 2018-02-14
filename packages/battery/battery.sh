#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"
PACKAGE="battery"
DEPS="golang"

# -- Install dependencies
function install_dependencies() {
	brew install golang
}
echo -e ">>>>> Installing dependencies..."
install_dependencies &> /dev/null

# -- Install package
function install_package() {
	mkdir $TMPDIR/$PACKAGE
	export GOPATH=$TMPDIR/$PACKAGE
	go get -u github.com/Code-Hex/battery/cmd/battery
	mv $TMPDIR/$PACKAGE/bin/$PACKAGE $HOME/usr/bin/$PACKAGE
}
echo -e ">>>>> Fetching sources..."
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm -rf $PACKAGE
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
echo
