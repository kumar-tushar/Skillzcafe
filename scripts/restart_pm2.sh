#!/bin/bash
cd /var/www/Skillzcafe
pm2 stop all
pm2 restart all
