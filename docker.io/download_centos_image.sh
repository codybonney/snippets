#!/bin/sh

# Run vagrant ssh from the same directory as where you ran vagrant up. Vagrant will connect you to the correct VM.
vagrant ssh

# Download centos image
sudo docker pull centos