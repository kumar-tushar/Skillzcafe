#!/bin/bash

# Define the name of the PM2 process you want to manage
process_name="skillzcafeapi"
project_path=/var/www/Skillzcafe

# Check if the PM2 process exists
sudo pm2 status | grep -q "$process_name"

cd "$project_path"

if [ $? -eq 0 ]; then
    # The PM2 process exists, so restart it
    sudo pm2 restart "$process_name"
    echo "PM2 process $process_name Restarted "
else
    # The PM2 process does not exist, so start it
    sudo pm2 start --name "$process_name" npm -- start
    echo "PM2 process $process_name Started"
fi

exit 0
