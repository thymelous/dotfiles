#!/bin/bash

# Java
sudo dnf -y install java-1.8.0-openjdk

# CLI HTTP client
sudo dnf -y install httpie

# Text editing
sudo dnf -y install vim vim-X11 fzf inotify-tools

# asdf version manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.1
source ~/.bashrc
asdf plugin-add erlang
asdf plugin-add elixir
asdf plugin-add nodejs

# Docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce
sudo systemctl enable docker
sudo systemctl start docker

# Langs
curl -sSL https://get.haskellstack.org/ | sh
