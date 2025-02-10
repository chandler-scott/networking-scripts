# Basic Linux Networking Commands

## Network Configuration
- `ifconfig` - Show IP and network interfaces (deprecated, use `ip a`)
- `ip a` - Show IP addresses
- `ip link` - Show network interfaces
- `ip route` - Show routing table
- `hostname` - Show or set the system hostname
- `nmcli device status` - Show network device status

## Network Connectivity
- `ping <host>` - Check network connectivity
- `traceroute <host>` - Show the route packets take to a host
- `nslookup <domain>` - Query DNS records
- `dig <domain>` - Detailed DNS lookup
- `curl <URL>` - Fetch content from a URL
- `wget <URL>` - Download a file from a URL

## Port and Service Management
- `netstat -tulnp` - Show open ports and listening services (deprecated, use `ss`)
- `ss -tulnp` - Show open ports and listening services
- `lsof -i :<port>` - Show processes using a specific port
- `nmap <IP>` - Scan ports on a host
- `systemctl status <service>` - Show the status of a service
- `systemctl restart <service>` - Restart a service

## Firewall Management
- `ufw status` - Show firewall status (Ubuntu/Debian)
- `ufw allow <port>` - Allow traffic on a port
- `firewall-cmd --list-all` - Show firewall rules (RHEL/CentOS)
- `iptables -L -v -n` - List firewall rules

## Network Troubleshooting
- `tcpdump -i <interface>` - Capture network traffic on an interface
- `wireshark` - GUI tool for network analysis
- `mtr <host>` - Continuous traceroute
- `ethtool <interface>` - Display or modify NIC settings
- `ip neigh` - Show ARP table

## SSH and Remote Access
- `ssh user@host` - Connect to a remote server
- `scp file user@host:/path` - Copy a file to a remote server
- `rsync -avz source user@host:/path` - Sync files to a remote server
- `ssh-keygen` - Generate SSH key pair
- `ssh-copy-id user@host` - Copy SSH key to a remote server

## Miscellaneous
- `whois <domain>` - Get domain information
- `arp -a` - Show ARP cache
- `route -n` - Show routing table
- `ipcalc <IP>` - Calculate subnet details

