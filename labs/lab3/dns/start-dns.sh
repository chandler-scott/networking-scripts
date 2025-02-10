#!/bin/bash

# Replace environment variables in the template file
cat /etc/bind/zones/db.template.local | envsubst '$DNS_SERVER_IP $WEB_SERVER_IP $IMAGE_SERVER_IP' > /etc/bind/zones/db.networking.local

# Start the DNS server
named -g

