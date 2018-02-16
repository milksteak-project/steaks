#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling directhw..."
unlink $HOME/usr/lib/libDirectHW.dylib
sudo kextunload $HOME/usr/opt/DirectHW/Extensions/DirectHW.kext
rm $HOME/usr/sbin/directhw
rm -rf $HOME/usr/opt/DirectHW
rm -rf $HOME/usr/etc/packages/directhw
echo -e "directhw has been successfully uninstalled!"
