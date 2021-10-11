#!/bin/sh

# This script setups my 1337 hacker environment after a fresh install of kali

# Must be ran as root!

# Update the box
apt update -y
apt upgrade -y

# Install some things and dependencies
apt install curl gpg software-properties-common apt-transport-https vim terminator -y 

# Install Visual Studio Code
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
apt update
apt install code


# Setup directory for stuffs

mkdir /home/*/github
mkdir /home/*/htb
mkdir /home/*/ctfs
mkdir /home/*/thm

# Download more RAM (tools)

mkdir /opt/tools
git clone https://github.com/carlospolop/PEASS-ng.git /opt/tools
