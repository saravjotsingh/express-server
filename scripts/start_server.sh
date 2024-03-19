#!/bin/bash
cd /home/ubuntu/express-server
pm2 delete express-server
pm2 start app.js --name express-server