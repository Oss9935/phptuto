#!/bin/sh

sudo apt-get update
sudo apt-get install lamp-server^

sudo echo -e "\n\nServerName localhost\nAcceptFilter http none\n" | sudo tee -a /etc/apache2/apache2.conf
sudo /etc/init.d/apache2 start

echo "done"