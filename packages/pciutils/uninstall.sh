#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling pciutils..."
rm $HOME/usr/sbin/lspci
rm $HOME/usr/sbin/setpci
rm $HOME/usr/sbin/update-pciids
rm $HOME/usr/lib/libpci.dylib
rm $HOME/usr/lib/libpci.3.dylib
rm $HOME/usr/lib/libpci.a
rm $HOME/usr/lib/pkgconfig/libpci.pc
rm $HOME/usr/share/pci.ids.gz
rm $HOME/usr/share/pci.ids.gz.old
rm $HOME/usr/share/man/man7/pcilib.7
rm $HOME/usr/share/man/man8/lspci.8
rm $HOME/usr/share/man/man8/setpci.8
rm $HOME/usr/share/man/man8/update-pciids.8
rm -rf $HOME/usr/include/pci
rm -rf $HOME/usr/etc/packages/pciutils
echo -e "pciutils has been successfully uninstalled!"
echo
