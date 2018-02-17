#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="cbmfs"
VERSION="master"
SOURCE="${PACKAGE}-${VERSION}"
ZIP="${SOURCE}.zip"
LINK="https://github.com/mist64/${PACKAGE}/archive/${VERSION}.zip"

# -- Install dependencies (noop)
echo -e ">>>>> Installing dependencies..."

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
	cd $TMPDIR/$SOURCE
	make
	mv $PACKAGE $HOME/usr/bin/$PACKAGE
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
