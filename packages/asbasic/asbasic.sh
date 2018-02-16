#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="asbasic"
VERSION="2.5"
SOURCE="${PACKAGE}-${VERSION}"
TARBALL="${SOURCE}.tar.gz"
LINK="https://github.com/sigma-1/${PACKAGE}/archive/v${VERSION}.tar.gz"

PREFIX="--prefix=$HOME/usr --datarootdir=$HOME/usr/share --mandir=$HOME/usr/share/man"

# -- Install dependencies (noop)
echo -e ">>>>> Installing dependencies..."

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
	cd $TMPDIR/$SOURCE
	./configure $PREFIX
	make ; mv $PACKAGE $HOME/usr/bin/$PACKAGE
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
