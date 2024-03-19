#!/bin/bash
cd /home/ubuntu/express-server
echo pwd
pm2 delete express-server
pm2 start app.js --name express-server