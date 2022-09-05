#!/bin/sh
echo "Running custom script"
sudo apt-get upgrade -y
sudo apt-get install -y nginx
sudo apt-get install -y curl
sudo apt-get install -y git
sudo curl -L "https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
