#!/bin/bash -eux

apt-get -y install build-essential
apt-get -y install dkms
apt-get -y install lsb-release
apt-get -y install nfs-common
apt-get -y install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev libyaml-0-2
apt-get -y install language-pack-en
apt-get -y install vim git wget mc curl sqlite3 libsqlite3-dev

apt-get -y install ruby-augeas augeas-tools libaugeas-ruby libaugeas-dev libaugeas-ruby1.9.1
apt-get -y install ruby1.9.1-dev

# Without libdbus virtualbox would not start automatically after compile
apt-get -y install --no-install-recommends libdbus-1-3
