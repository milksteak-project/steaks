#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling lsusb..."
rm $HOME/usr/sbin/lsusb
rm -rf $HOME/usr/etc/packages/lsusb
echo -e "lsusb has been successfully uninstalled!"
echo
