#! /usr/bin/env sh

# sleep timer for packer
sleep 30

# add additional repos
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"
add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-updates main universe"

# update, install curl and linux kernel 3.16
apt-get update --fix-missing
apt-get upgrade -y
apt-get install -y curl linux-headers-3.16.0-29 linux-headers-3.16.0-29-generic \
		linux-image-3.16.0-29-generic linux-image-extra-3.16.0-29-generic

# install docker
		curl -sSL https://get.docker.io | sudo sh

# print docker version
		docker version
