#!/bin/bash
echo "📦 Installing dependencies..."
# This script is optional and could be used if your application
# has runtime dependencies that need to be installed during deployment,
# beyond what was set up by the initial EC2 setup script.
# For a simple static site served by Nginx, this might not be needed.
sudo dnf install -y nginx # Example: if Nginx wasn't installed initially or needed re-installation