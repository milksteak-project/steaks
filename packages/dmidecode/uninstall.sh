#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling dmidecode..."
rm $HOME/usr/sbin/biosdecode
rm $HOME/usr/sbin/dmidecode
rm $HOME/usr/sbin/ownership
rm $HOME/usr/sbin/vpddecode
rm $HOME/usr/share/man/man8/biosdecode.8
rm $HOME/usr/share/man/man8/dmidecode.8
rm $HOME/usr/share/man/man8/ownership.8
rm $HOME/usr/share/man/man8/vpddecode.8
rm -rf $HOME/usr/share/doc/dmidecode
rm -rf $HOME/usr/etc/packages/dmidecode
echo -e "dmidecode has been successfully uninstalled!"
