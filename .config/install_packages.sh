cat packages_manual.list | xargs sudo apt-get install -y
cat packages_auto.list | xargs sudo apt-get install -y

sudo apt-mark auto $(cat packages_auto.list)
sudo apt-mark manual $(cat packages_manual.list)
