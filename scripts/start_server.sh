#!/bin/bash
/usr/bin/pm2 delete express-server
/usr/bin/pm2 start app.js --name express-server