#!/bin/bash

# Install base dependencies
sudo dnf -y install curl autoconf automake git

# Add RPM Fusion repositories
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Fetch the rest of the scripts
mkdir -p ~/git
cd ~/git

git clone https://github.com/thymelous/dotfiles.git
cd dotfiles

# Link dotfiles
rm -i ~/.bashrc; ln -s `pwd`/.bashrc     ~/.bashrc
rm -i ~/.vimrc;  ln -s `pwd`/.vimrc      ~/.vimrc
mkdir -p ~/.vim; ln -s `pwd`/plugins.vim ~/.vim/plugins.vim
ln -s `pwd`/gitignore_global ~/gitignore_global
git config --global core.excludesfile ~/gitignore_global

# Continue installation
cd system
run-parts .
