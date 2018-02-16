#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="dsniff"
VERSION="2.4b1-darwin_x86_64"
SOURCE="${PACKAGE}-${VERSION}"
TARBALL="${SOURCE}.tar.gz"
LINK="https://github.com/sigma-1/${PACKAGE}/archive/${VERSION}.tar.gz"

DEPS="libnet libnids libpcap openssl"

FLAGS="--with-libpcap=/usr/local/opt/libpcap --with-openssl=/usr/local/opt/openssl --with-libnet=/usr/local/opt/libnet --with-libnids=/usr/local/opt/libnids --without-x"
PREFIX="--prefix=$HOME/usr --datarootdir=$HOME/usr/share --mandir=$HOME/usr/share/man"

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
	cd $TMPDIR ; pv $TARBALL | tar xz
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd $TMPDIR/$SOURCE
	./configure $FLAGS $PREFIX
	make ; make install
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
