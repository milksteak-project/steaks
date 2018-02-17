#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling ctools..."
rm $HOME/usr/bin/cbiosdump
rm $HOME/usr/bin/cformat
rm $HOME/usr/bin/ctools
rm $HOME/usr/bin/d64dump
rm $HOME/usr/share/man/man1/cbiosdump.1
rm $HOME/usr/share/man/man1/cformat.1
rm $HOME/usr/share/man/man1/ctools.1
rm $HOME/usr/share/man/man1/d64dump.1
rm $HOME/usr/share/man/man5/d64.5
rm -rf $HOME/usr/etc/packages/ctools
echo -e "ctools has been successfully uninstalled!"
