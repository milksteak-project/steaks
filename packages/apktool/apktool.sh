#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE="apktool"
VERSION="2.3.1"
SOURCE="${PACKAGE}_${VERSION}"
JAR="${SOURCE}.jar"
LINK="https://github.com/iBotPeaches/Apktool/releases/download/v${VERSION}/${JAR}"

DEPS="java"

# -- Java
echo -e ">>>>> Installing dependencies..."
if [ ! -d /Library/Java/Home ]; then
	echo -e "NOTE: This package is a Java application. It seems that Java is not currently installed."
	while true ; do
	read -r -p "Would you like to install Java now? (y/n) " choice
		case "$choice" in
			n|N)	break
				;;
			y|Y)	brew cask install $DEPS
					break
				;;
			*)	echo -e "Invalid argument."
				;;
		esac
	done
else
	:
fi

# -- Fetch jar
function fetch_package() {
	test -e $JAR || wget -O $TMPDIR/$JAR $LINK -q --show-progress
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	mkdir -p $HOME/usr/opt/java/$PACKAGE-$VERSION
	DESTDIR="$HOME/usr/opt/java/$PACKAGE-$VERSION"
	mv $TMPDIR/$JAR $DESTDIR/$PACKAGE.jar
	cat $HOME/usr/libexec/steak-jarstub $DESTDIR/$PACKAGE.jar > $HOME/usr/bin/$PACKAGE && chmod 755 $HOME/usr/bin/$PACKAGE
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup (noop)
echo -e ">>>>> Cleaning up..."

echo -e "$PACKAGE has been successfully installed!"
