#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="lsusb"
PKGLIB="libusb"
VERSION="1.0.21"
SOURCE="${PKGLIB}-${VERSION}"
TARBALL="${SOURCE}.tar.bz2"
LINK="https://github.com/${PKGLIB}/${PKGLIB}/releases/download/v${VERSION}/${TARBALL}"

DEPS="pkg-config libusb libftdi"


echo -e "Note: The lsusb package is deprecated."
echo -e "It is recommended that you install the usbutils package instead."

# -- Conflicts
if [ -d $HOME/usr/etc/packages/lsusb ];then
	echo -e "Warning: This package may conflict with the following package:"
	echo -e "> usbutils"
else
	:
fi

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

	$CC -o lsusb listdevs.c -lusb-1.0 -I../libusb
	mv $PACKAGE $HOME/usr/sbin/${PACKAGE}1
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
