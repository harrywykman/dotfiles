#!/bin/bash

sudo apt-get update && sudo apt-get install build-essential libfftw3-dev libncursesw5-dev cmake

mkdir -p ~/tmp

cd ~/tmp

git clone https://github.com/dpayne/cli-visualizer.git

cd ~/tmp/cli-visualizer

./install.sh





