#!/bin/bash

# Check if IP is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS>"
  exit 1
fi

IP=$1

# Connect to the FTP server and list files
echo "Connecting to FTP server at $IP..."
ftp -n $IP <<EOF
user bobby password_master
ls
bye
EOF

