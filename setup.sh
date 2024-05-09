#!/bin/bash
# Created by Gustavo Braga

# Ensures the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Define user credentials
read -p "Enter your username for the SMB server: " user
read -sp "Enter your password for the SMB server: " password
echo    # add a new line after password input
read -p "Enter your server IP for the SMB server: " serverip

# Update and install necessary packages
apt update && apt upgrade -y
apt install -y ca-certificates curl cifs-utils psmisc build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 xrdp openssh-server docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Docker and add user to the docker group
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
groupadd docker
usermod -aG docker $USER
newgrp docker

# Mount SMB shares
# Ensure the credentials are securely stored
echo "username=$user
password=$password
domain=$serverip
" > /root/.credentials
chmod 600 /root/.credentials

# Backup existing fstab
cp /etc/fstab /etc/fstab.backup

# Create mount points and configure fstab for persistence
mkdir -p /mnt/fileServer/rust /mnt/fileServer/erust /mnt/fileServer/ssd
echo "//$serverip/rust /mnt/fileServer/rust cifs credentials=/root/.credentials,uid=1000,gid=1000,rw 0 0" >> /etc/fstab
echo "//$serverip/erust /mnt/fileServer/erust cifs credentials=/root/.credentials,uid=1000,gid=1000,rw 0 0" >> /etc/fstab
echo "//$serverip/ssd /mnt/fileServer/ssd cifs credentials=/root/.credentials,uid=1000,gid=1000,rw 0 0" >> /etc/fstab

# Mount everything in fstab
mount -a

# Create symbolic links
ln -s /mnt/fileServer/rust ~/rust
ln -s /mnt/fileServer/erust ~/erust
ln -s /mnt/fileServer/ssd ~/ssd

echo "Installation and configuration complete."
