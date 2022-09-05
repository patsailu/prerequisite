#!/bin/sh
echo "Running custom script"
sudo apt-get upgrade -y
sudo apt-get install -y nginx
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt install gnome-terminal
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release docker.io docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker
sudo gpasswd -a $USER docker
sudo setfacl -m "user:$USER:rw" /var/run/docker.sock
sudo chmod 666 /var/run/docker.sock
curl -OL https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
sha256sum go1.18.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.18.2.linux-amd64.tar.gz
curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/bootstrap.sh| bash -s
