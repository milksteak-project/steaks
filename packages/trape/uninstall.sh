#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling trape..."
unlink $HOME/usr/bin/trape
rm -rf $HOME/usr/opt/python/trape
rm -rf $HOME/usr/etc/packages/trape
echo -e "trape has been successfully uninstalled!"
