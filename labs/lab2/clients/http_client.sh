#!/bin/bash

# Check if IP is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS>"
  exit 1
fi

IP=$1

# Access the HTTP server and show headers
echo "Connecting to HTTP server at $IP..."
curl -i http://$IP >/dev/null 2>&1

