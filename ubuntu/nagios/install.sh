#!/bin/bash

# Update and upgrade system packages
sudo apt update && sudo apt upgrade -y

# Install required dependencies
sudo apt install -y wget unzip curl openssl build-essential libgd-dev libssl-dev libapache2-mod-php php-gd php apache2 apache2-utils bc gawk dc autoconf gcc libc6 make snmp libnet-snmp-perl gettext

# Create Nagios user and groups
sudo useradd -m -s /bin/bash nagios
sudo groupadd nagcmd
sudo usermod -a -G nagcmd nagios
sudo usermod -a -G nagcmd www-data

# Download Nagios core source
cd /tmp
wget https://assets.nagios.com/downloads/nagioscore/releases/nagios-4.4.6.tar.gz

# Extract and enter source directory
sudo tar -zxvf nagios-4.4.6.tar.gz
cd nagios-4.4.6

# Configure and compile Nagios
sudo ./configure --with-nagios-group=nagios --with-command-group=nagcmd
sudo make all

# Install Nagios binaries, init, configuration, command mode and web interface files
sudo make install
sudo make install-init
sudo make install-commandmode
sudo make install-config
sudo make install-webconf

# Enable Apache modules rewrite and CGI
sudo a2enmod rewrite
sudo a2enmod cgi

# Allow apache through firewall and restart apache
sudo ufw allow apache
sudo ufw allow ssh # since we are setting up a firewall which was not already there, we need to enable ssh too
sudo ufw enable
sudo ufw reload
sudo systemctl restart apache2

# Create Nagios admin web user - change 'adminuser' to desired username
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users nagiosadmin

# Download Nagios plugins
cd /tmp
sudo wget https://nagios-plugins.org/download/nagios-plugins-2.3.3.tar.gz

# Extract plugins and compile
sudo tar -zxvf nagios-plugins-2.3.3.tar.gz
cd nagios-plugins-2.3.3
sudo ./configure --with-nagios-user=nagios --with-nagios-group=nagios
sudo make
sudo make install

# Verify Nagios config and restart services
sudo /usr/local/nagios/bin/nagios -v /usr/local/nagios/etc/nagios.cfg
sudo systemctl start nagios
sudo systemctl enable nagios
sudo systemctl restart apache2

echo "Nagios installation completed. Access the web interface via http://your_server_ip/nagios with user 'adminuser'."
