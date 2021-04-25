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

# OCR
sudo dnf -y install ocrmypdf tesseract-langpack-rus

# Shell theme
sudo dnf install -y gnome-tweak-tool gtk-murrine-engine sassc optipng gtk3-devel
cd /tmp
git clone https://github.com/jnsh/arc-theme --depth 1
cd arc-theme
sed -i 's/font-size: 9;/font-size: 11;/g' common/gnome-shell/3.36/sass/_common.scss
meson setup --prefix=/usr -Dthemes=gtk2,gtk3,gnome-shell -Dtransparency=false build/ 
meson install -C build/

# Shell icons
sudo dnf install -y moka-icon-theme
cd /tmp
git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

cd /tmp
rm -r arc_icons
