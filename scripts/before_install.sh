#!/bin/bash

sudo apt-get update

# Check if PM2 is installed
if ! command -v pm2 &> /dev/null; then
    echo "PM2 not found. Installing PM2 globally..."
    sudo npm install -g pm2
else
    echo "PM2 is already installed."
fi
