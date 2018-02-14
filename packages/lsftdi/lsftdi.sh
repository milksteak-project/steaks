#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="lsftdi"
PKGLIB="libftdi"
VERSION="1.4"
SOURCE="${PKGLIB}1-${VERSION}"
TARBALL="${SOURCE}.tar.bz2"
LINK="https://www.intra2net.com/en/developer/${PKGLIB}/download/${TARBALL}"

DEPS="pkg-config libusb libftdi wget"

# -- Install dependencies
function install_dependencies() {
	brew install $DEPS
}
echo -e ">>>>> Installing dependencies..."
install_dependencies &> /dev/null

# -- Fetch source
function fetch_package() {
	# -- Fetch source tarball
	test -e $TARBALL || wget -O $TMPDIR/$TARBALL $LINK -q --show-progress
	# -- Unpack tarball
	cd $TMPDIR ; pv $TARBALL | tar xpj
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd $TMPDIR/$SOURCE/examples

	ARCH="darwin"
	DARWINVERSION=`uname -r`

	if [ -f /usr/local/bin/x86_64-apple-darwin$DARWINVERSION-gcc-7 ];then
		CC="x86_64-apple-darwin$DARWINVERSION-gcc-7"
	else
		CC="/usr/bin/gcc"
	fi

	$CC -o lsftdi find_all.c -lftdi1 -lusb-1.0 -I../src

	mv $PACKAGE $HOME/usr/bin/$PACKAGE
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm $TARBALL
	rm -rf $SOURCE
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
echo
