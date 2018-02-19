#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="libnl"
VERSION="master" #2.0
SOURCE="${PACKAGE}-${VERSION}"
ZIP="${SOURCE}.zip"
LINK="https://github.com/sigma-1/${PACKAGE}/archive/${VERSION}.zip"
DEPS="bison"

# -- Install dependencies
function install_dependencies() {
	brew install $DEPS
}
echo -e ">>>>> Installing dependencies..."
install_dependencies &> /dev/null

# -- Fetch source
function fetch_package() {
	# -- Fetch source ZIP
	test -e $ZIP || wget -O $TMPDIR/$ZIP $LINK -q --show-progress
	# -- Unpack ZIP
	cd $TMPDIR ; unzip -o $ZIP | pv -l >/dev/null
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd ${TMPDIR}/${SOURCE}
	./autogen.sh
	./configure --prefix=$HOME/usr
	make ; make install PREFIX=$HOME/usr
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm $ZIP
	rm -rf $SOURCE
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
