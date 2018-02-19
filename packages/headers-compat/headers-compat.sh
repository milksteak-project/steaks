#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="headers-compat"
VERSION="master"
LINK="https://github.com/sigma-1/${PACKAGE}.git"

# -- Fetch package
function fetch_package() {
	git clone ${LINK} ${TMPDIR}/${PACKAGE}
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	mkdir -p $HOME/usr/include/compat
	cp -a ${TMPDIR}/${PACKAGE}/include/. $HOME/usr/include/compat/
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup (noop)
echo -e ">>>>> Cleaning up..."
rm -rf ${TMPDIR}/${PACKAGE}

echo -e "$PACKAGE has been successfully installed!"
