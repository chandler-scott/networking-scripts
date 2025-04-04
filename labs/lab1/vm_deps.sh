#!/bin/bash

# Description:  This script is hosted on GitHub and 
#   designed to be retrieved by VMs using wget. It 
#   installs the necessary dependencies for the 
#   intended environment or application.
# Author: Chandler Scott (scottcd1@etsu.edu)
# Date: 01/15/25 
# License: GNU General Public License v3.0

install_docker() {
    for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
      $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
}

install_packages() {
    sudo apt update -y && sudo apt upgrade -y
    sudo apt install -y vim wireshark openssh-server
}

enable_services() {
    # Start SSH server
    sudo systemctl enable ssh
    sudo systemctl start ssh
}

main() {
    install_packages
    enable_services
    install_docker
}

main
