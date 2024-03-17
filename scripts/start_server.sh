#!/bin/bash
cd /home/ubuntu/express-server
# /usr/bin/pm2 delete express-sever
# /usr/bin/pm2 start app.js --name express-sever
node app.js -d
mkdir abc.txt