#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling sqlninja..."
unlink $HOME/usr/bin/sqlninja
rm -rf $HOME/usr/opt/perl/sqlninja
rm -rf $HOME/usr/etc/packages/sqlninja
echo -e "sqlninja has been successfully uninstalled!"
