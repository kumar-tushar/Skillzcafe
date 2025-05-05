#!/bin/bash
cd /var/www/Skillzcafe

# Preserve .env and .git folder, delete everything else
find . -mindepth 1 ! -name '.env' ! -name '.git' ! -path './.git/*' -exec rm -rf {} +
