#!/bin/bash

# Docker
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker $(whoami)

newgrp docker << GROUP_SUBSHELL

# Docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)"\
 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

GROUP_SUBSHELL

clear

echo "You probably should restart your machine by now. Just in case. 😉"
