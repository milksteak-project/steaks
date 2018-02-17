#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling filewatcher..."
rm $HOME/usr/sbin/filewatcher
rm -rf $HOME/usr/etc/packages/filewatcher
echo -e "filewatcher has been successfully uninstalled!"
