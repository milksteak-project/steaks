#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling battery..."
rm $HOME/usr/bin/battery
rm -rf $HOME/usr/etc/packages/battery
echo -e "battery has been successfully uninstalled!"
echo
