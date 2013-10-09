#!/bin/sh

# http://docs.docker.io/en/latest/installation/vagrant/

# Fetch the docker sources (this includes the Vagrantfile for machine setup).
git clone https://github.com/dotcloud/docker.git

# Change directory to docker
cd docker

# Run vagrant from the sources directory
vagrant up

# To access the VM and use Docker, Run vagrant ssh from the same directory as where you ran vagrant up. Vagrant will connect you to the correct VM.
vagrant ssh

# Now you are in the VM, run docker
sudo docker