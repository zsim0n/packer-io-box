#!/bin/bash -eux

date > /etc/vagrant_box_build_time

# Add vagrant user (if it doesn't already exist)
if ! id -u vagrant >/dev/null 2>&1; then
  groupadd vagrant
  useradd vagrant -g vagrant
  echo vagrant:vagrant | chpasswd
#    echo "vagrant        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
#    chmod 0440 /etc/sudoers.d/vagrant
fi
# sudoers

# Installing vagrant keys
mkdir -pm 700 /home/vagrant/.ssh
wget --no-check-certificate \
    'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' \
    -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh
