#!/bin/bash

sudo dnf -y update

# Base dependencies
sudo dnf -y install curl autoconf automake git

# Graphics
sudo dnf -y install inkscape

# RPM Fusion
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install --nogpgcheck http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Multimedia
sudo dnf install -y ffmpeg mpv
pip3 install mps-youtube --user
pip3 install youtube-dl --user
