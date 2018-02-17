#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="gapa"
DEPS="python3"
PYDEPS="rumps py2app"
LINK="https://github.com/ozlerhakan/${PACKAGE}.git"

# -- Install dependencies
function install_dependencies() {
#	brew install ${DEPS}
	pip3 install ${PYDEPS}
}
echo -e ">>>>> Installing dependencies..."
install_dependencies &> /dev/null

# -- Fetch source
function fetch_package() {
	git clone ${LINK} ${TMPDIR}/${PACKAGE}
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	cd ${TMPDIR}/${PACKAGE}
	python3 setup.py py2app
	cp -r dist/Gapa.app /Applications/Gapa.app
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
function cleanup() {
	rm -rf ${TMPDIR}/${PACKAGE}
}
echo -e ">>>>> Cleaning up..."
cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
