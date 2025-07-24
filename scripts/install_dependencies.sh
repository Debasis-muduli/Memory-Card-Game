#!/bin/bash

set -e
echo "🔧 Installing dependencies..."

# Install nginx if not already installed
if ! command -v nginx &> /dev/null; then
  sudo yum update -y
  sudo yum install -y nginx
fi

sudo systemctl enable nginx
sudo systemctl start nginx
echo "✅ Dependencies installed."
