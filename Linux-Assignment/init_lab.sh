#!/bin/bash
echo 'updates packages'
sudo apt update && sudo apt upgrade
echo 'installs curl,wget,tree,htop,git,net-tools'
sudo apt install -y curl wget tree htop git net-tools
echo 'create users and assign them to a group'
sudo useradd devops
sudo useradd qa
sudo useradd intern
echo 'assigns the users to a group name engineering'
sudo groupadd engineering
sudo usermod -a -G engineering devops
sudo usermod -a -G engineering qa
sudo usermod -a -G engineering intern
username="devops"
password="Password"
username="qa"
password="Password"
username="intern"
password="Password"
echo "$username:$password" | sudo chpasswd
echo "Password for $username has been changed"
sudo chage -d 0 devops
sudo chage -d 0 qa
sudo chage -d 0 intern


