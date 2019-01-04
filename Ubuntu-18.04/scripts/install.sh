#!/bin/bash -eux

# Install VirtualBox Guest Additions.
cd /home/vagrant
vboxVersion=`cat .vbox_version`
mount VBoxGuestAdditions_"$vboxVersion".iso -o loop /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
