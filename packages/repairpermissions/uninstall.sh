#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling repairpermissions..."
rm $HOME/usr/sbin/repairpermissions
rm -rf $HOME/usr/etc/packages/repairpermissions
echo -e "repairpermissions has been successfully uninstalled!"
