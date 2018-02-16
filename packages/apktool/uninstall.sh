#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling apktool..."
rm $HOME/usr/bin/apktool
rm -rf $HOME/usr/opt/java/apktool-2.3.1
rm -rf $HOME/usr/etc/packages/apktool
echo -e "apktool has been successfully uninstalled!"
