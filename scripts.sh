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
sudo snap install go --classic
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/bootstrap.sh| bash -s
