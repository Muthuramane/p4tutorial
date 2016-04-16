#!/usr/bin/env bash

cd ~
git clone git://github.com/p4lang/p4factory.git

cd ~/p4factory/
./install_deps.sh
./autogen.sh
./configure

cd ~
git clone https://github.com/p4lang/behavioral-model.git bmv2
cd ~/bmv2/
./install_deps.sh
./autogen.sh
./configure --enable-debugger
make

cd ~
git clone https://github.com/p4lang/p4c-bm.git p4c-bmv2
cd ~/p4c-bmv2
sudo pip install -r requirements.txt
sudo python setup.py install
./autogen.sh
./configure
make
sudo make install
