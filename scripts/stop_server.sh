#!/bin/bash
isExistApp = `pgrep pm2`
if [[ -n  $isExistApp ]]; then
    sudo pm2 delete express-server
fi