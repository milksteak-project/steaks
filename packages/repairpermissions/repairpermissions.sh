#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="repairpermissions"
NAME="RepairPermissions"
VERSION="3.8.3200"
ZIP="RepairPermissions3.8.3200_ae6251a2d7ac9950e915e5b9ef44f0db.zip"
LINK="https://drive.firewolf.science/public/RepairPermissions/${ZIP}"

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
	cd ${TMPDIR} ; mv ${NAME} ${HOME}/usr/sbin/${PACKAGE}
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	cd $TMPDIR
	rm $ZIP
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
