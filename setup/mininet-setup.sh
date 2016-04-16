#!/usr/bin/env bash

cd ~
sudo rm -rf mininet
sudo rm -rf openflow
/usr/bin/yes | sudo pip uninstall mininet
sudo rm `which mn`
sudo rm `which mnexec`
sudo rm /usr/share/man/man1/mn.1*
sudo rm /usr/share/man/man1/mnexec.1*

# Now re-install Mininet
git clone git://github.com/mininet/mininet
pushd mininet
git checkout -b 2.2.1 2.2.1
./util/install.sh -a
popd
