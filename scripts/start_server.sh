#!/bin/bash
set -e

APP_DIR="/usr/share/nginx/html"

echo "🧹 Cleaning existing files..."
sudo rm -rf $APP_DIR/*

echo "📁 Copying new app files..."
sudo cp /home/ec2-user/index.html $APP_DIR/
sudo cp /home/ec2-user/style.css $APP_DIR/
sudo cp /home/ec2-user/script.js $APP_DIR/
sudo cp -r /home/ec2-user/images $APP_DIR/

echo "🔄 Restarting nginx..."
sudo systemctl restart nginx