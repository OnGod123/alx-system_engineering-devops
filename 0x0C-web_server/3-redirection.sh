#!/usr/bin/env bash
# Configure Nginx server so that /redirect_me is redirecting to another page

sudo apt-get update
sudo apt-get -y install nginx
#sudo service nginx start
echo "Hello World" | sudo tee /usr/share/nginx/html/index.html
sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/github.com\/OnGod123 permanent;/" /etc/nginx/sites-available/default
sudo service nginx start
