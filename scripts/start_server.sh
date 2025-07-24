#!/bin/bash

set -e
echo "🚀 Starting web server and deploying app..."
APP_DIR="/usr/share/nginx/html"

# Remove default nginx files
sudo rm -rf "$APP_DIR"/*

# Copy your app files from CodeDeploy directory to nginx directory
# Ensure these files (index.html, style.css, script.js, images)
# are part of your CodeBuild artifact and are present in /home/ec2-user
# after the CodeDeploy agent copies them.
sudo cp -r /home/ec2-user/index.html /home/ec2-user/style.css /home/ec2-user/script.js /home/ec2-user/images "$APP_DIR"/
sudo systemctl restart nginx
echo "✅ App deployed and nginx restarted."
