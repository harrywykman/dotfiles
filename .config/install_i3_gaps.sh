#!/bin/bash

sudo apt install make dh-autoreconf

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake make libxcb-xrm-dev

mkdir -p ~/tmp

cd ~/tmp

git clone https://github.com/Airblader/i3.git

cd ./i3

git checkout gaps && git pull

autoreconf --force --install

rm -rf build

mkdir build

cd build

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers

make

sudo make install
