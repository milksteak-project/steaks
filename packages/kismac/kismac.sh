#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="kismac"
NAME="KisMac2"
ZIP="${NAME}.zip"
DMG="${NAME}.dmg"
LINK="http://downloads.igrsoft.com/beta/KisMac2.zip"

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
	cd $TMPDIR
	hdiutil mount ${TMPDIR}/${DMG}
	cp -r /Volumes/${NAME}/${NAME}.app /Applications/${NAME}.app
	hdiutil unmount /Volumes/${NAME}
	touch ${HOME}/usr/bin/${PACKAGE}
	echo "#!/usr/bin/env bash
open /Applications/KisMac2.app" >> $HOME/usr/bin/${PACKAGE}
	chmod 755 ${HOME}/usr/bin/${PACKAGE}
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm $ZIP
	rm $DMG
	rm -rf $TMPDIR/__MACOSX
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "${PACKAGE} has been successfully installed!"
