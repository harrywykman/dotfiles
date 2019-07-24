#!/bin/bash

source ./.bashrc

sudo cp ./sources.list /etc/apt/sources.list

sudo apt upgrade && sudo apt full-upgrade

sudo apt install xorg lightdm i3-wm i3status suckless-tools

./install_light.sh

./install_i3_gaps.sh

./install_packages.sh

./install_vis.sh

