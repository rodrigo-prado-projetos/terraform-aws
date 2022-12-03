#!/bin/bash
sudo apt-get update
sudo apt-get install -y curl wget
curl -fsSL https://get.docker.com | bash
sudo docker pull httpd
sudo docker run -d --name httpd -p 8080:80 httpd