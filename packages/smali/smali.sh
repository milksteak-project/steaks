#!/usr/bin/env bash

TMPDIR="$HOME/usr/tmp"

PACKAGE1="smali"
PACKAGE2="baksmali"
VERSION="2.2.2"
SOURCE1="${PACKAGE1}-${VERSION}"
SOURCE2="${PACKAGE2}-${VERSION}"
JAR1="${SOURCE1}.jar"
JAR2="${SOURCE2}.jar"
LINK1="https://bitbucket.org/JesusFreke/smali/downloads/${JAR1}"
LINK2="https://bitbucket.org/JesusFreke/smali/downloads/${JAR2}"

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
	test -e $JAR1 || wget -O $TMPDIR/$JAR1 $LINK1 -q --show-progress
	test -e $JAR2 || wget -O $TMPDIR/$JAR2 $LINK2 -q --show-progress
}
echo -e ">>>>> Fetching sources..."
fetch_package &> /dev/null

# -- Install package
function install_package() {
	mkdir -p $HOME/usr/opt/java/$PACKAGE1-$VERSION
	DESTDIR="$HOME/usr/opt/java/$PACKAGE1-$VERSION"
	mv $TMPDIR/$JAR1 $DESTDIR/$PACKAGE1.jar
	mv $TMPDIR/$JAR2 $DESTDIR/$PACKAGE2.jar
	cat $HOME/usr/libexec/steak-jarstub $DESTDIR/$PACKAGE1.jar > $HOME/usr/bin/$PACKAGE1 && chmod 755 $HOME/usr/bin/$PACKAGE1
	cat $HOME/usr/libexec/steak-jarstub $DESTDIR/$PACKAGE2.jar > $HOME/usr/bin/$PACKAGE2 && chmod 755 $HOME/usr/bin/$PACKAGE2
}
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup (noop)
echo -e ">>>>> Cleaning up..."

echo -e "$PACKAGE1 has been successfully installed!"
echo
