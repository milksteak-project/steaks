#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling go-battery..."
rm $HOME/usr/bin/go-battery
rm -rf $HOME/usr/etc/packages/go-battery
echo -e "go-battery has been successfully uninstalled!"
