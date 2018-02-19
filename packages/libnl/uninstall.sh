#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling libnl..."
rm $HOME/usr/lib/libnl-cli.2.dylib
rm $HOME/usr/lib/libnl-cli.a
rm $HOME/usr/lib/libnl-cli.dylib
rm $HOME/usr/lib/libnl-cli.la
rm $HOME/usr/lib/libnl-genl.2.dylib
rm $HOME/usr/lib/libnl-genl.a
rm $HOME/usr/lib/libnl-genl.dylib
rm $HOME/usr/lib/libnl-genl.la
rm $HOME/usr/lib/libnl-nf.2.dylib
rm $HOME/usr/lib/libnl-nf.a
rm $HOME/usr/lib/libnl-nf.dylib
rm $HOME/usr/lib/libnl-nf.la
rm $HOME/usr/lib/libnl-route.2.dylib
rm $HOME/usr/lib/libnl-route.a
rm $HOME/usr/lib/libnl-route.dylib
rm $HOME/usr/lib/libnl-route.la
rm $HOME/usr/lib/libnl.2.dylib
rm $HOME/usr/lib/libnl.a
rm $HOME/usr/lib/libnl.dylib
rm $HOME/usr/lib/libnl.la
rm $HOME/usr/lib/pkgconfig/libnl-2.0.pc
rm -rf $HOME/usr/etc/libnl
rm -rf $HOME/usr/include/netlink
rm -rf $HOME/usr/etc/packages/libnl
echo -e "libnl has been successfully uninstalled!"
