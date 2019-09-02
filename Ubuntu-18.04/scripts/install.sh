#!/bin/bash -eux

# Install VirtualBox Guest Additions.
cd /home/vagrant
vboxVersion=`cat .vbox_version`
mount VBoxGuestAdditions_"$vboxVersion".iso -o loop /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

# Install Docker.
apt install curl -y
curl -fsSL https://get.docker.com -o get-docker.sh
chmod +x get-docker.sh
./get-docker.sh
usermod -aG docker vagrant

# Install Docker Compose.
apt install jq -y
COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sh -c "curl -L https://github.com/docker/compose/releases/download/${COMPOSE_VERSION}/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
chmod 755 /usr/local/bin/docker-compose
