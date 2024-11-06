#!/bin/bash

# Get the WSL IP at runtime
WSL_IP=$(hostname -I | awk '{print $1}')
echo "WSL_IP is set to: $WSL_IP"
# Substitute WSL_IP in nginx.conf.template and create nginx.conf
envsubst '${WSL_IP}' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf

# Start Nginx in the foreground
nginx -g 'daemon off;'
