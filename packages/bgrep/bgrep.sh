#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="bgrep"
VERSION="1.0"
SOURCE="${PACKAGE}-${VERSION}"
TARBALL="${SOURCE}.tar.gz"
LINK="https://github.com/rsharo/${PACKAGE}/archive/${TARBALL}"

PREFIX="--prefix=$HOME/usr"

# -- Install dependencies
#function install_dependencies() {
#	nothing to do here
#}
echo -e ">>>>> Installing dependencies..."
#install_dependencies &> /dev/null

# -- Fetch source
function fetch_package() {
	# -- Fetch source tarball
	test -e $TARBALL || wget -O $TMPDIR/$TARBALL $LINK -q --show-progress
	# -- Unpack tarball
	cd $TMPDIR ; pv $TARBALL | tar xz
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd ${TMPDIR}/${PACKAGE}-${SOURCE}
	./bootstrap
	./configure $PREFIX
	make ; make install
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm $TARBALL
	rm -rf ${PACKAGE}-${SOURCE}
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
