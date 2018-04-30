#!/bin/bash

# refresh package lists from repositories
sudo apt-get -y update
# install docker
sudo wget -qO- https://get.docker.com/ | sh
# add user to docker group
sudo usermod -aG docker $(whoami)
