#!/usr/bin/env bash

# -- Uninstall
echo -e ">>>>> Uninstalling kismac..."
rm $HOME/usr/bin/kismac
rm -rf /Applications/KisMac2.app
rm $HOME/Library/Preferences/com.igrsoft.kismac.plist
rm -rf $HOME/Library/Application\ Support/com.igrsoft.kismac
rm $HOME/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.igrsoft.kismac.sfl
rm -rf $HOME/usr/etc/packages/kismac
echo -e "kismac has been successfully uninstalled!"
