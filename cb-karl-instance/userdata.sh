#!/bin/bash

# refresh package lists from repositories
sudo apt-get -y update
# install docker
sudo wget -qO- https://get.docker.com/ | sh
# add user to docker group
sudo usermod -aG docker $(whoami)
# docker login
docker login -u cbikesbot -p cbikes94
# docker run latest cb-karl
docker run -e NODE_ENV=test -p 80:3000 dhvogel/cb-karl:latest
