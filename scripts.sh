#!/bin/sh
echo "Running custom script"
apt-get upgrade -y
apt-get install -y nginx
apt-get install -y curl
apt-get install -y git
