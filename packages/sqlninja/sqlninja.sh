#!/usr/bin/env bash

PACKAGE="sqlninja"
DEPS="perl"

# -- Install dependencies
#function install_dependencies() {
#	brew install $DEPS
#}
echo -e ">>>>> Installing dependencies..."
#install_dependencies &> /dev/null

# -- Install package
function install_package() {
	mkdir -p $HOME/usr/opt/perl
	git clone 	git://git.kali.org/packages/sqlninja.git $HOME/usr/opt/perl/sqlninja
	cd $HOME/usr/opt/perl/sqlninja ; chmod 755 sqlninja
	cpan install NetPacket Net::DNS Net::RawIP IO::Socket::SSL Net::Pcap
	ln -s $HOME/usr/opt/perl/sqlninja/sqlninja $HOME/usr/bin/sqlninja
}
echo -e ">>>>> Fetching sources..."
echo -e ">>>>> Installing package..."
install_package &> /dev/null

# -- Cleanup
#function cleanup() {
#	nothing to do here
#}
echo -e ">>>>> Cleaning up..."
#cleanup &> /dev/null

echo -e "$PACKAGE has been successfully installed!"
