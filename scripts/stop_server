#!/bin/bash
isExistApp = `pgrep pm2`
if [[ -n  $isExistApp ]]; then
    pm2 delete express-server
fi