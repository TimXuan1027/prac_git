#!/bin/bash


# Stop Nginx
sudo systemctl stop nginx

# Disable Nginx
sudo systemctl disable nginx

# Remove Nginx
sudo dnf remove -y nginx

# Disable Firewalld
sudo firewall-cmd --permanent --remove-service=http
sudo firewall-cmd --reload

# Check 
rpm -q nginx
sudo firewall-cmd --list-all
