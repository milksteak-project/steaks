#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling theharvester..."
unlink $HOME/usr/bin/theharvester
rm -rf $HOME/usr/opt/python/theHarvester
rm -rf $HOME/usr/etc/packages/theharvester
echo -e "theharvester has been successfully uninstalled!"
