#!/bin/bash

sudo dnf -y update

# Development
sudo dnf -y install curl autoconf automake git
sudo dnf -y install java-1.8.0-openjdk httpie

# Text editing
sudo dnf -y install vim fzf inotify-tools

# Graphics
sudo dnf -y install inkscape

# RPM Fusion
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Multimedia
sudo dnf install -y ffmpeg ffmpeg-compat mpv
pip3 install mps-youtube --user
pip3 install youtube-dl --user

# Gnome
sudo dnf install -y gnome-tweak-tool

# Docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce
sudo systemctl enable docker
sudo systemctl start docker

# Langs
curl -sSL https://get.haskellstack.org/ | sh
