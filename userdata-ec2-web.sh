#!/bin/bash
# Update the system packages
apt update && apt upgrade -y

# Install the necessary packages
apt install software-properties-common unzip -y

# Add Ansible PPA and install Ansible
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y

# Install the AWS CLI version 2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# Configure SSH key using the AWS Secrets Manager
aws secretsmanager get-secret-value --secret-id /dev/ssh/ansibe/deployguru-servers/public --query 'SecretString' --output text | base64 --decode > /home/ubuntu/.ssh/authorized_keys

chown -R ubuntu:ubuntu .ssh
