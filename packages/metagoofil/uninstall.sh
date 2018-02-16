#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling metagoofil..."
unlink $HOME/usr/bin/metagoofil
rm -rf $HOME/usr/opt/python/metagoofil
rm -rf $HOME/usr/etc/packages/metagoofil
echo -e "metagoofil has been successfully uninstalled!"
