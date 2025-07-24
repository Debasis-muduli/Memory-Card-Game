#!/bin/bash

set -e
echo "🛑 Stopping nginx server..."
sudo systemctl stop nginx
echo "✅ nginx stopped."
