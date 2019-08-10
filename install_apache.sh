#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y apache2
sudo rm -rf /var/www/ntml/index.html

sudo apt-get install -y awscli

hostname | sudo tee /var/www/html/index.html