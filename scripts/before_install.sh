#!/bin/bash
# Install node.js and PM2 globally
echo 'installing curl'
sudo apt install curl -y
echo 'Installing nodejs'
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
echo 'moving bash'
source ~/.bashrc
nvm install --lts
nvm use 20
