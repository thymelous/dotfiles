#!/usr/bin/env sh

# Gnome Terminal profile
dconf load /org/gnome/terminal/legacy/profiles:/:fdfcf4a0-b6ee-42aa-878d-ab5a11780043/< gnome-terminal.dconf

gsettings set org.gnome.desktop.background show-desktop-icons false
# Top bar
gsettings set org.gnome.desktop.interface clock-format '12h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface show-battery-percentage true
# Shell theme
gsettings set org.gnome.desktop.interface gtk-theme 'Arc-Darker'
gsettings set org.gnome.desktop.interface icon-theme 'Arc'
# Fonts
gsettings set org.gnome.desktop.interface font-name 'Fira Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'Fira Mono 11'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Fira Sans Bold 11'
# Keyboard
gsettings set org.gnome.desktop.input-sources xkb-options ['grp:alt_shift_toggle', 'caps:swapescape']
# Windows
gsettings set org.gnome.shell.overrides button-layout '":minimize,maximize,close"'
