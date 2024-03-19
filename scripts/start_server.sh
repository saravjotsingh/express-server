#!/bin/bash
cd /home/ubuntu/express-server
echo pwd
sudo pm2 delete express-server
sudo pm2 start app.js --name express-server