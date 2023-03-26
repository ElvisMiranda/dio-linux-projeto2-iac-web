#!/usr/bin/env bash

apt-get update
apt-get install -y apache2
apt-get install -y unzip

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

echo "Downloading archive..."
wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Moving it to the web wolder..."
mv main.zip html 
cd html
echo "Unzipping the archive..."
unzip main.zip


