#!/bin/bash -eux
useradd --create-home --shell /bin/bash --user-group --uid 1000 --groups docker worker
echo worker:worker | chpasswd
echo "worker ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers