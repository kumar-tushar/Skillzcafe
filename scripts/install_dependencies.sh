#!/bin/bash


echo "---------------------------------------"
echo "Deployment Group: $DEPLOYMENT_GROUP_NAME"
echo "Application Name: $APPLICATION_NAME"
echo "---------------------------------------"

cd /var/www/Skillzcafe
sudo chown -R ubuntu:ubuntu /var/www/Skillzcafe

git branch
git checkout -f main
git pull

npm install

exit 0