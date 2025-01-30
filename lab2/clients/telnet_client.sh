#!/bin/bash

# Check if IP is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS>"
  exit 1
fi

IP=$1

# Connect to the Telnet server and capture output
echo "Connecting to Telnet server at $IP..."
telnet $IP 23 >/dev/null 2>&1

