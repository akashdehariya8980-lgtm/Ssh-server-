#!/bin/bash

# Install OpenSSH
apt-get update
apt-get install -y openssh-server

# Make SSH folder
mkdir -p /var/run/sshd

# Set username and password
useradd -m user
echo "user:password123" | chpasswd

# Allow root login + password authentication
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config

# Start SSH
/usr/sbin/sshd -D
