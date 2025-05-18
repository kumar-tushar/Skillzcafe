#!/bin/bash

# Add PM2 to PATH
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v18.20.4/bin

cd /var/www/Skillzcafe

# Stop and start the app by name
pm2 stop skillzcafeapi || true
pm2 start index.js --name "skillzcafeapi"