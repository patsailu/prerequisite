#!/bin/sh
echo "Running custom script"
apt-get upgrade -y
apt-get install -y nginx
apt-get install -y curl
apt-get install -y git
curl -L "https://github.com/docker/compose/releases/download/2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
curl -sSL https://bit.ly/2ysbOFE | bash -s
