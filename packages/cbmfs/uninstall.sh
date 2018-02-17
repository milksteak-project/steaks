#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling cbmfs..."
rm $HOME/usr/bin/cbmfs
rm -rf $HOME/usr/etc/packages/cbmfs
echo -e "cbmfs has been successfully uninstalled!"
