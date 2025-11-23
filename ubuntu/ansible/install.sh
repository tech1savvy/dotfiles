#!/bin/bash

# Update package index and upgrade existing packages
sudo apt update && sudo apt upgrade -y

# Install software-properties-common to manage repositories
sudo apt install software-properties-common -y

# Add Ansible PPA repository
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Update package list again
sudo apt update

# Install Ansible
sudo apt install ansible -y

# Verify installation
ansible --version
