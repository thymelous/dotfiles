#!/bin/bash

# Archivers
sudo dnf -y install unar

# Graphics editing
sudo dnf -y install inkscape ImageMagick

# Video playback
sudo dnf install -y ffmpeg mpv

# Music playback
pip3 install mps-youtube --user
pip3 install youtube-dl --user

# Shell theme
sudo dnf install -y gnome-tweak-tool arc-theme moka-icon-theme

# Shell icons
mkdir -p /tmp/arc_icons
cd arc_icons

git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

cd /tmp
rm -r arc_icons
