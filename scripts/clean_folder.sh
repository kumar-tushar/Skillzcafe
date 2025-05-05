#!/bin/bash
cd /var/www/Skillzcafe

# Preserve .env, delete everything else
shopt -s extglob
rm -rf !(.env)
