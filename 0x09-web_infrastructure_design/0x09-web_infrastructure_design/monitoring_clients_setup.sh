#!/bin/bash

# Configure Firewall 1
# Add rules to allow necessary incoming and outgoing traffic
# Example:
ufw allow ssh
ufw allow http
ufw allow https
ufw enable

# Configure Firewall 2
# Add rules to allow necessary incoming and outgoing traffic
# Example:
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -P INPUT DROP

# Configure Firewall 3
# Add rules to allow necessary incoming and outgoing traffic
# Example:
firewall-cmd --zone=public --add-service=http --permanent
firewall-cmd --zone=public --add-service=https --permanent
firewall-cmd --reload

