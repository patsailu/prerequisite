#!/bin/sh
echo "Running custom script"
sudo apt-get upgrade -y
sudo apt-get install -y nginx
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get -y install docker-compose
sudo systemctl start docker
sudo systemctl enable docker
user=$(whoami)
sudo usermod -a -G docker $user
curl -OL https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
sha256sum go1.18.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.18.2.linux-amd64.tar.gz
