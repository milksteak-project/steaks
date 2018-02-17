#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="bedim"
NAME="Bedim"
VERSION="1.0.2"
DMG="${NAME}.dmg"
LINK="https://github.com/victorgama/${PACKAGE}/releases/download/v${VERSION}/${DMG}"

# -- Install dependencies (noop)
echo -e ">>>>> Installing dependencies..."

# -- Fetch source
function fetch_package() {
	# -- Fetch source ZIP
	test -e $DMG || wget -O $TMPDIR/$DMG $LINK -q --show-progress
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd $TMPDIR
	hdiutil mount ${TMPDIR}/${DMG}
	cp -r /Volumes/${NAME}/${NAME}.app /Applications/${NAME}.app
	hdiutil unmount /Volumes/${NAME}
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm $DMG
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "${PACKAGE} has been successfully installed!"
