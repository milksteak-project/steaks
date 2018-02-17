#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling asbasic..."
rm $HOME/usr/bin/asbasic
rm $HOME/usr/lib/libasbasic.a
rm $HOME/usr/share/man/man1/asbasic.1
rm -rf $HOME/usr/etc/packages/asbasic
echo -e "asbasic has been successfully uninstalled!"
