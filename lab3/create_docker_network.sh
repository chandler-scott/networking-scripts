#!/bin/bash

SUBNET="192.168.100.0/24"
GATEWAY="192.168.100.1"
INTERFACE="enp42s0"

docker network create -d macvlan \
--subnet=$SUBNET \
--gateway=$GATEWAY \
-o parent=$INTERFACE macvlan_net
