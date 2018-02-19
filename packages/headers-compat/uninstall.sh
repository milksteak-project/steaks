#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling headers-compat..."
rm -rf $HOME/usr/include/compat
rm -rf $HOME/usr/etc/packages/headers-compat
echo -e "headers-compat has been successfully uninstalled!"
