#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling theharvester..."
unlink $HOME/usr/bin/rsf
rm -rf $HOME/usr/opt/python/routersploit
rm -rf $HOME/usr/etc/packages/routersploit
echo -e "theharvester has been successfully uninstalled!"
