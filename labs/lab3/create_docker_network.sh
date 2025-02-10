#!/bin/bash

SUBNET="192.168.100.0/24"
GATEWAY="192.168.100.1"
INTERFACE="enp0s8"

# Clean up
docker compose down
docker network rm macvlan_net

# Create macvlan network
docker network create -d macvlan \
--subnet=$SUBNET \
--gateway=$GATEWAY \
-o parent=$INTERFACE macvlan_net

# Stupid VirtualBox network requires this for VM2 to connect to VM1 containers
sudo ip link set $INTERFACE promisc on

# Restart for changes to take effect
sudo systemctl restart networking
