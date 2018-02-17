#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="ctools"
VERSION="master"
SOURCE="${PACKAGE}-${VERSION}"
ZIP="${SOURCE}.zip"
LINK="https://github.com/mist64/${PACKAGE}/archive/${VERSION}.zip"

# -- Install dependencies (noop)
echo -e ">>>>> Installing dependencies..."

# -- Fetch source
function fetch_package() {
	# -- Fetch source ZIP
	test -e ${ZIP} || wget -O ${TMPDIR}/${ZIP} ${LINK} -q --show-progress
	# -- Unpack ZIP
	cd ${TMPDIR} ; unzip -o ${ZIP} | pv -l >/dev/null
	# -- Fetch patches
	wget -O ${TMPDIR}/${SOURCE}/biosdump.patch https://raw.githubusercontent.com/milksteak-project/steaks/master/packages/ctools/patches/biosdump.patch -q --show-progress
	wget -O ${TMPDIR}/${SOURCE}/gcc-fix.patch https://raw.githubusercontent.com/milksteak-project/steaks/master/packages/ctools/patches/gcc-fix.patch -q --show-progress
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd ${TMPDIR}/${SOURCE}
	patch -p1 < gcc-fix.patch
	patch -p1 < biosdump.patch
	cd src ; make ; cd ..
	cp src/cbiosdump $HOME/usr/bin/cbiosdump
	cp src/cformat $HOME/usr/bin/cformat
	cp src/ctools $HOME/usr/bin/ctools
	cp src/d64dump $HOME/usr/bin/d64dump
	mkdir -p $HOME/usr/share/man/man1
	cp doc/cbiosdump.1 $HOME/usr/share/man/man1/cbiosdump.1
	cp doc/cformat.1 $HOME/usr/share/man/man1/cformat.1
	cp doc/ctools.1 $HOME/usr/share/man/man1/ctools.1
	cp doc/d64dump.1 $HOME/usr/share/man/man1/d64dump.1
	mkdir -p $HOME/usr/share/man/man5
	cp doc/d64.5 $HOME/usr/share/man/man5/d64.5
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd ${TMPDIR}
	rm ${ZIP}
	rm -rf ${SOURCE}
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
