#!/bin/sh
echo "Running custom script"
apt-get upgrade -y
apt-get install -y nginx
apt-get install -y curl
apt-get install -y git
git config --global http.sslverify false
apt-get -y install docker-compose
chmod +x /usr/local/bin/docker-compose
cd 
curl -sSL https://bit.ly/2ysbOFE | bash -s
curl -OL https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
sha256sum go1.18.2.linux-amd64.tar.gz
tar -C /usr/local -xvf go1.18.2.linux-amd64.tar.gz
