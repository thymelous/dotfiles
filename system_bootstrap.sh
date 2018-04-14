#!/bin/bash

# Install base dependencies
sudo dnf -y install autoconf automake git

# Add RPM Fusion repositories
sudo dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Fetch the rest of the scripts
mkdir -p ~/git
cd ~/git

git clone https://github.com/thymelous/dotfiles.git
cd dotfiles

# Link dotfiles
mv ~/.bashrc ~/.bashrc.old
ln -s `pwd`/.bashrc ~/.bashrc

mv ~/.vimrc ~/.vimrc.old
ln -s `pwd`/.vimrc ~/.vimrc

mkdir -p ~/.vim
ln -s `pwd`/plugins.vim ~/.vim/plugins.vim

ln -s `pwd`/gitignore_global ~/gitignore_global
git config --global core.excludesfile ~/gitignore_global

mkdir -p ~/.stack/global
ln -s `pwd`/stack.global.yaml ~/.stack/global/stack.yaml

# Continue installation
cd system
run-parts .
