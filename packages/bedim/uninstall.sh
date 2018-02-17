#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling bedim..."
rm -rf /Applications/Bedim.app
rm $HOME/Library/Preferences/io.vito.Bedim.plist
rm -rf $HOME/Library/Caches/io.vito.Bedim
rm -rf $HOME/usr/etc/packages/bedim
echo -e "bedim has been successfully uninstalled!"
