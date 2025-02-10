# Basic Linux Commands

## File and Directory Management
- `ls` - List files and directories
- `ls -l` - List with detailed information
- `ls -a` - Show hidden files
- `pwd` - Print current working directory
- `cd <directory>` - Change directory
- `mkdir <directory>` - Create a new directory
- `rmdir <directory>` - Remove an empty directory
- `rm <file>` - Remove a file
- `rm -r <directory>` - Remove a directory and its contents
- `cp <source> <destination>` - Copy files or directories
- `mv <source> <destination>` - Move or rename files
- `touch <file>` - Create a new empty file
- `find <directory> -name <filename>` - Search for files by name

## File Permissions and Ownership
- `chmod <mode> <file>` - Change file permissions
- `chown <user>:<group> <file>` - Change file owner and group
- `ls -l` - View file permissions

## File Viewing and Editing
- `cat <file>` - View file contents
- `less <file>` - View file with navigation
- `head -n <number> <file>` - Show first N lines
- `tail -n <number> <file>` - Show last N lines
- `tail -F <file>` - Monitor file updates in real time
- `nano <file>` - Open file in Nano editor
- `vim <file>` - Open file in Vim editor

## Process Management
- `ps` - Show active processes
- `top` - Display running processes and system stats
- `kill <PID>` - Terminate a process by PID
- `pkill <name>` - Kill process by name
- `jobs` - List background jobs
- `bg <job>` - Resume a job in the background
- `fg <job>` - Resume a job in the foreground

## System Information
- `uname -a` - Show system information
- `uptime` - Show system uptime
- `df -h` - Show disk usage
- `free -h` - Show memory usage
- `whoami` - Show current user
- `id` - Show user ID (UID) and group ID (GID)

## Networking
- `ifconfig` - Show IP and network interfaces (deprecated, use `ip a`)
- `ip a` - Show IP addresses
- `ping <host>` - Check network connectivity
- `netstat -tulnp` - Show open ports and listening services
- `ss -tulnp` - Modern replacement for `netstat`
- `curl <URL>` - Fetch content from a URL
- `wget <URL>` - Download a file from a URL

## User Management
- `who` - Show logged-in users
- `whoami` - Show current user
- `sudo <command>` - Run command as superuser
- `su <user>` - Switch user
- `passwd` - Change user password

## Package Management
(Depends on the Linux distribution)

### Debian/Ubuntu
- `apt update` - Update package list
- `apt upgrade` - Upgrade installed packages
- `apt install <package>` - Install a package
- `apt remove <package>` - Remove a package

### RHEL/CentOS
- `yum update` - Update system
- `yum install <package>` - Install a package
- `yum remove <package>` - Remove a package

### Arch Linux
- `pacman -Syu` - Update system
- `pacman -S <package>` - Install a package
- `pacman -R <package>` - Remove a package

## File Compression
- `tar -cvf archive.tar <files>` - Create a tar archive
- `tar -xvf archive.tar` - Extract a tar archive
- `gzip <file>` - Compress a file with gzip
- `gunzip <file.gz>` - Decompress a gzip file
- `zip archive.zip <files>` - Create a zip archive
- `unzip archive.zip` - Extract a zip archive

## Miscellaneous
- `echo <text>` - Print text to terminal
- `history` - Show command history
- `clear` - Clear terminal screen
- `alias <name>='<command>'` - Create command alias
- `date` - Show current date and time
- `cal` - Display calendar
- `shutdown -h now` - Shutdown system
- `reboot` - Restart system

