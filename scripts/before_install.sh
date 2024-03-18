#!/bin/bash
# Install node.js and PM2 globally
sudo apt-get update
sudo apt-get  install nodejs-legacy -y
echo 'Installing npm'
sudo apt-get install npm  -y
echo 'Installing pm2'
sudo apt-get install pm2 -g

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"