#!/bin/bash

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
