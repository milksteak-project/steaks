#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling ethtool..."
rm $HOME/usr/sbin/ethtool
rm $HOME/usr/share/man/man8/ethtool.8
rm -rf $HOME/usr/etc/packages/ethtool
echo -e "ethtool has been successfully uninstalled!"
