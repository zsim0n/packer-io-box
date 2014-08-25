Minimalistic packer.io Base box - 
=====
Ubuntu 14.04 LTS + Puppet + Librarian Puppet



### Builders
* vagrant
* rackspace


### Prerequisits
* VirtualBox
* Packer

### Usage

```
$ packer build -only=virtualbox-iso packer.json
```
or
```
$ packer build -only=openstack packer.json
```

> remember to install nova client `
$ sudo pip install rackspace-novaclient`
> and setup your identity 

add box to vagrant

```
$ vagrant box add -f test awesome-trusty-virtualbox.box
```

