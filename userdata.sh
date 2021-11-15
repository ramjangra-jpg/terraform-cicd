#!/bin/bash
sudo apt update -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx 
sudo apt install -y postgresql postgresql-contrib
sudo apt install -y postgresql-client