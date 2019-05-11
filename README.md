# Ubuntu

A minimal Packer template for unattended installation of a Ubuntu Server with Docker virtual machine and turning it into a Vagrant Box. 

## Prerequisites

* [VirtualBox](https://www.virtualbox.org/) - Oracle
* [Packer](https://www.packer.io/) - HashiCorp
* [Vagrant](https://www.vagrantup.com/) - HashiCorp

Optionally download and copy to '../Ubuntu-18.04/iso' folder
* [ubuntu-18.04.2-server-amd64.iso](http://cdimage.ubuntu.com/ubuntu/releases/bionic/release/ubuntu-18.04.2-server-amd64.iso) - Ubuntu

## Instructions

```
git clone https://github.com/szabacsik/packer_templates.git packer_templates
```

```
cd packer_templates\Ubuntu-18.04
```

```
packer build -on-error=ask ubuntu-18.04-vagrant.json
```

The created artifact will be outputted at the end of the build into the '../Ubuntu-18.04/output' folder. With the provided Vagrantfile an instance of the provisioned Ubuntu Server virtual machine can be started by the command: 

```
vagrant up
```
