UFW Configuration for Nginx
This README provides instructions for setting up UFW (Uncomplicated Firewall) to manage firewall rules for Nginx, including redirecting traffic from port 8080 to port 80.

Prerequisites
A server running Ubuntu
Nginx installed on the server
UFW installed and enabled on the server
Step-by-Step Guide
Step 1: Install Nginx and UFW
Update the package list and install Nginx:

bash
Copy code
sudo apt update
sudo apt install nginx
Install UFW if it is not already installed:

bash
Copy code
sudo apt install ufw
Step 2: Configure UFW for Nginx
Allow Nginx through the firewall:

bash
Copy code
sudo ufw allow 'Nginx Full'
Enable UFW:

bash
Copy code
sudo ufw enable
Check UFW status to ensure Nginx is allowed:

bash
Copy code
sudo ufw status
Step 3: Redirect Port 8080 to Port 80
Edit the UFW before rules:

bash
Copy code
sudo nano /etc/ufw/before.rules
Add the following rules at the top of the *nat section:

plaintext
Copy code
*nat
:PREROUTING ACCEPT [0:0]
:INPUT ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
:POSTROUTING ACCEPT [0:0]

# Redirect traffic from port 8080 to 80
-A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80

COMMIT
Save and close the file.

Reload UFW to apply the new rules:

bash
Copy code
sudo ufw reload
Step 4: Verify the Configuration
Check UFW status to confirm the rules are applied:

bash
Copy code
sudo ufw status verbose
Test the redirection using curl:

bash
Copy code
curl -I http://localhost:8080
You should see headers indicating a response from Nginx, similar to:

plaintext
Copy code
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: ...
Content-Type: text/html
Content-Length: ...
Last-Modified: ...
Connection: keep-alive
ETag: ...
Accept-Ranges: bytes
Troubleshooting
Nginx not responding on port 8080:
Ensure that the UFW rules are correctly applied and that Nginx is running.

bash
Copy code
sudo systemctl status nginx
UFW not redirecting correctly:
Verify the before.rules file for any syntax errors and ensure UFW is reloaded.

bash
Copy code
sudo ufw reload
sudo ufw status
Additional Resources
UFW Documentation
Nginx Documentation
Ubuntu Server Guide

