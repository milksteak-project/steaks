#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="directhw"
VERSION="milksteak"
SOURCE="${PACKAGE}-${VERSION}"
ZIP="${SOURCE}.zip"
LINK="https://github.com/sigma-1/${PACKAGE}/archive/${VERSION}.zip"

echo -e "NOTE: This package contains a kernel extension that must be manually loaded."

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
	cd ${TMPDIR}/${SOURCE}

	make build
	make userland

	mkdir -p $HOME/usr/opt/DirectHW
	mkdir -p $HOME/usr/opt/DirectHW/lib
	mkdir -p $HOME/usr/opt/DirectHW/Extensions
	mkdir -p $HOME/usr/opt/DirectHW/Frameworks

	cp directhw $HOME/usr/sbin/directhw
	chmod 755 $HOME/usr/sbin/directhw

	cp libDirectHW.a $HOME/usr/opt/DirectHW/lib/libDirectHW.a
	cp libDirectHW.dylib $HOME/usr/opt/DirectHW/lib/libDirectHW.dylib
	ln -s $HOME/usr/opt/DirectHW/lib/libDirectHW.a $HOME/usr/lib/libDirectHW.a
	ln -s $HOME/usr/opt/DirectHW/lib/libDirectHW.dylib $HOME/usr/lib/libDirectHW.dylib

	cp -r build/Release/DirectHW.framework $HOME/usr/opt/DirectHW/Frameworks/DirectHW.framework
	cp -r build/Release/DirectHW.kext $HOME/usr/opt/DirectHW/Extensions/DirectHW.kext
	sudo chown -R root:wheel $HOME/usr/opt/DirectHW/Extensions/DirectHW.kext
	sudo chmod -R 755 $HOME/usr/opt/DirectHW/Extensions/DirectHW.kext
}
echo -e ">>>>> Installing package..."
echo -e "NOTE: You must enter your password to set ownership and permissions for DirectHW.kext"
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
echo
