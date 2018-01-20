#!/bin/bash

sudo dnf install -y gnome-tweak-tool arc-theme moka-icon-theme

cd tmp
git clone https://github.com/horst3180/arc-icon-theme --depth 1
cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install
