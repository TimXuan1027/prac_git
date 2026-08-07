#!/bin/bash

# Install Nginx
sudo dnf install -y nginx

# Start and Enable Nginx
sudo systemctl enable --now nginx

# Enable Firewalld
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --reload
# Check Ngiinx status
systemctl status nginx --no-pager
systemctl status nginx
sudo firewall-cmd --list-all


