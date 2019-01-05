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
