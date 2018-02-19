#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling usbutils..."
rm $HOME/usr/sbin/lsusb
rm $HOME/usr/sbin/lsusb.py
rm $HOME/usr/sbin/update-usbids.sh
rm $HOME/usr/sbin/usb-devices
rm $HOME/usr/share/usb.ids
rm $HOME/usr/share/usb.ids.gz
rm $HOME/usr/share/man/man1/usb-devices.1
rm $HOME/usr/share/man/man8/lsusb.8
rm -rf $HOME/usr/share/pkgconfig/usbutils.pc
rm -rf $HOME/usr/etc/packages/usbutils
echo -e "usbutils has been successfully uninstalled!"
