#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling lsftdi..."
rm $HOME/usr/sbin/lsftdi
rm -rf $HOME/usr/etc/packages/lsftdi
echo -e "lsftdi has been successfully uninstalled!"
