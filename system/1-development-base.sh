#!/bin/bash

# Dependencies
sudo dnf -y install gcc-c++ ncurses-devel openssl-devel unixODBC-devel

# Java
sudo dnf -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel java-1.8.0-openjdk-src

# CLI HTTP client
sudo dnf -y install httpie

# Text editing
sudo dnf -y install vim vim-X11 fzf the_silver_searcher inotify-tools

# asdf version manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.1
source ~/.bashrc

# Docker
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf -y install docker-ce
sudo systemctl enable docker
sudo systemctl start docker

# Docker Compose
compose_version=1.18.0
sudo curl -L https://github.com/docker/compose/releases/download/${compose_version}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/${compose_version}/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# Haskell (including IHaskell)
sudo dnf -y install cairo-devel pango-devel file-devel zeromq-devel blas-devel lapack-devel
curl -sSL https://get.haskellstack.org/ | sh

cd /tmp
curl -LO https://raw.githubusercontent.com/gibiansky/IHaskell/master/requirements.txt
pip3 install --user -r requirements.txt
stack install gtk2hs-buildtools
stack install ihaskell
ihaskell install
stack install ihaskell-hatex
stack install ihaskell-plot
stack install hmatrix
stack install graphviz
stack install tabular
