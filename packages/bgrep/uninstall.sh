#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling bgrep..."
rm $HOME/usr/bin/bgrep
rm -rf $HOME/usr/share/doc/bgrep
rm -rf $HOME/usr/etc/packages/bgrep
echo -e "bgrep has been successfully uninstalled!"
