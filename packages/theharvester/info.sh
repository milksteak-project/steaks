#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/theharvester ] ; then
	echo -e "Package: theharvester (not installed)"
else
	echo -e "Package: theharvester (installed)"
fi
echo
echo -e "Version: 2.7"
echo -e "Homepage: http://www.edge-security.com"
echo -e "          https://github.com/laramies/theharvester"
echo
echo -e "Dependencies: python"
echo
echo -e "Description: A tool for gathering e-mail accounts, subdomain names, virtual hosts, open ports/ banners, and employee names from different public sources (search engines, pgp key servers)."
