#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling csrstat..."
rm $HOME/usr/sbin/csrstat
rm -rf $HOME/usr/etc/packages/csrstat
echo -e "csrstat has been successfully uninstalled!"
echo
