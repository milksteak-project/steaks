#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling smali..."
rm $HOME/usr/bin/smali
rm $HOME/usr/bin/baksmali
rm -rf $HOME/usr/opt/java/smali-2.2.2
rm -rf $HOME/usr/etc/packages/smali
echo -e "smali has been successfully uninstalled!"
echo
