#!/bin/bash

# Show OS version
echo "Current OS:"
lsb_release -si

echo -e "\nCurrent OS Version:"
lsb_release -sr

# List users with Bash shell
echo -e "\nUsers with Bash shell:"
grep '/bin/bash' /etc/passwd | cut -d ":" -f 1

# Show open ports
echo -e "\nOpen Ports:"
ss -tuln | awk 'NR > 1 {print $1, $4}'

