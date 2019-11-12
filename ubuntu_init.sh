#!/bin/bash

echo "Installing Git"

sudo apt -y install git

echo "Installing curl"

sudo apt -y install curl

echo "Installing NVM"

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.1/install.sh | bash
source $HOME/.profile

echo "TIP: If you dont get NVM in your commandline, and the following 2 lines in your profile"
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh


echo"Installing Node 12.13"

nvm install --lts 12.13
nvm use 12.13

echo "Installing google chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo "Installing mongodb"
sudo apt install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sudo apt update
sudo apt install -y mongodb-org
