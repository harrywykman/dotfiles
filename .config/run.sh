#!/bin/bash

source ~/.bashrc

sudo apt install debian-keyring debian-archive-keyring

sudo cp ./sources.list /etc/apt/sources.list

sudo apt update && sudo apt full-upgrade -y

sudo apt install xorg lightdm i3-wm i3status suckless-tools

./install_light.sh

./install_i3_gaps.sh

./install_packages.sh

./install_vis.sh

