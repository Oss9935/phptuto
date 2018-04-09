#!/bin/sh

sudo apt-get update
sudo apt-get install lamp-server^

sudo echo -e "\n\nServerName localhost\nAcceptFilter http none\n" | sudo tee -a /etc/apache2/apache2.conf
sudo apt-get install php libapache2-mod-php
sudo a2enmod mpm_prefork && sudo a2enmod php7.0
#sudo service apache2 restart

sudo /etc/init.d/apache2 start

echo "done"