#!/bin/bash

# Text editing
sudo dnf -y install vim vim-X11 fzf the_silver_searcher inotify-tools

# CLI HTTP client
sudo dnf -y install httpie 
sudo pip3 install http-prompt

# Wine
sudo dnf install wine winetricks
winetricks -q vcrun2012
