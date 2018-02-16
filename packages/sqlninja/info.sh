#!/usr/bin/env bash

if [ ! -d $HOME/usr/etc/packages/sqlninja ] ; then
	echo -e "Package: sqlninja (not installed)"
else
	echo -e "Package: sqlninja (installed)"
fi
echo
echo -e "Version: 0.2.6-r1-1kali0"
echo -e "Homepage: http://sqlninja.sourceforge.net/"
echo -e "          https://tools.kali.org/vulnerability-analysis/sqlninja"
echo
echo -e "Dependencies: perl"
echo
echo -e "Description: Sqlninja is a tool targeted to exploit SQL Injection vulnerabilities on a web application that uses Microsoft SQL Server as its back-end."
