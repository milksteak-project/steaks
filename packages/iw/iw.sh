#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="iw"
VERSION="master" #4.14-dirty
SOURCE="${PACKAGE}-${VERSION}"
ZIP="${SOURCE}.zip"
LINK="https://github.com/sigma-1/${PACKAGE}/archive/${VERSION}.zip"
DEPS="pkg-config"

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
	export PKG_CONFIG_PATH=$HOME/usr/lib/pkgconfig
	make ; make install PREFIX=$HOME/usr
	rm $HOME/usr/share/man/man8/iw.8.gz
	cp iw.8 $HOME/usr/share/man/man8/iw.8
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
