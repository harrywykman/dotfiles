#!/bin/bash

cd ~/tmp

wget -O FirefoxSetup.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"

sudo mkdir -p /opt/firefox/

sudo tar xjf FirefoxSetup.tar.bz2 -C /opt/firefox/

sudo mv /usr/lib/firefox-esr/firefox-esr /usr/lib/firefox-esr/firefox-esr_orig

sudo ln -s /opt/firefox/firefox/firefox /usr/lib/firefox-esr/firefox-esr
