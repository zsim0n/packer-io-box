#!/bin/bash -eux

# sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
# sed -i -e 's/%sudo\s*ALL=(ALL:ALL) ALL/%sudo\tALL=NOPASSWD:ALL/g' /etc/sudoers

echo %vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant
chmod 0440 /etc/sudoers.d/vagrant
usermod -a -G sudo vagrant

