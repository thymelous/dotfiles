#!/bin/bash

# Install base dependencies
sudo dnf -y install curl autoconf automake git

# Add RPM Fusion repositories
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Fetch & run the rest of the scripts
mkdir -p ~/git
cd ~/git

git clone https://github.com/thymelous/dotfiles.git
cd dotfiles/system

run-parts .
