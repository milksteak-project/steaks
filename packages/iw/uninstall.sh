#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling iw..."
rm $HOME/usr/sbin/iw
rm $HOME/usr/share/man/man8/iw.8
rm -rf $HOME/usr/etc/packages/iw
echo -e "iw has been successfully uninstalled!"
