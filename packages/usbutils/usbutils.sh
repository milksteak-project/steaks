#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="lsusb-osx"
VERSION="master" #007
SOURCE="${PACKAGE}-${VERSION}"
ZIP="${SOURCE}.zip"
LINK="https://github.com/barisbalic/${PACKAGE}/archive/${VERSION}.zip"
DEPS="libusb"

# -- Conflicts
if [ -d $HOME/usr/etc/packages/lsusb ];then
	echo -e "This package may conflict with the following package:"
	echo -e "> lsusb"
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
	./configure --prefix=$HOME/usr --bindir=$HOME/usr/sbin --datarootdir=$HOME/usr/share --mandir=$HOME/usr/share/man
	make ; make install
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
