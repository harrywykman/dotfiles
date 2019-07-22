#!/bin/bash

cd ~/tmp

wget https://github.com/haikarainen/light/releases/download/v1.2/light_1.2_amd64.deb

echo "installing light for backlight control - please enter sudo password:"

sudo dpkg -i light_1.2_amd64.deb

wget https://github.com/haikarainen/light/blob/master/90-backlight.rules

sudo cp ./90-backlight.rules /usr/lib/udev/rules.d/

