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
sudo snap install --classic code
sudo apt install nodejs -y
sudo apt install build-essential -y
cd ~
curl -sSL https://raw.githubusercontent.com/hyperledger/fabric/main/scripts/bootstrap.sh| bash -s
cp -R /var/lib/waagent/custom-script/download/0/fabric-samples $HOME
chown -R $(whoami):$(whoami) fabric-samples
sudo apt-get -y install xfce4
sudo apt-get -y install xrdp
sudo systemctl enable xrdp
echo xfce4-session >~/.xsession
sudo service xrdp restart
