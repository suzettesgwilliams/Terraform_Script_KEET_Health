#!/bin/bash
# ubuntu 18.04
sudo apt update -y
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu
sudo run --name nginx -d -p 80:80 tutum/hello-world