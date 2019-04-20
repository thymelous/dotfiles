#!/bin/bash

# General
sudo dnf -y install cmake gcc-c++ ncurses-devel openssl-devel unixODBC-devel libffi-devel

# flex & bison, building some tools from source requires them
sudo dnf -y install flex flex-devel bison bison-devel

# Scripting
sudo dnf -y install ruby ruby-devel nodejs

# OCaml
sudo dnf -y install ocaml ocaml-ocamldoc ocaml-merlin ocam-findlib opam

# Java
sudo dnf -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel java-1.8.0-openjdk-src

# OpenCL driver prerequisites
sudo dnf -y install dkms kernel-devel

# Gnome libs (for source builds)
sudo dnf -y install gettext-devel json-glib-devel

# Docker
sudo dnf -y install docker
sudo systemctl enable docker
sudo systemctl start docker

# asdf version manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.4.1
source ~/.bashrc

# Erlang & Elixir
asdf plugin-add erlang
asdf plugin-add elixir

# # Docker Compose
# compose_version=1.18.0
# sudo curl -L https://github.com/docker/compose/releases/download/${compose_version}/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose
# sudo curl -L https://raw.githubusercontent.com/docker/compose/${compose_version}/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
# 
# # Haskell (including IHaskell)
# sudo dnf -y install cairo-devel pango-devel file-devel zeromq-devel blas-devel lapack-devel
# curl -sSL https://get.haskellstack.org/ | sh
# 
# cd /tmp
# curl -LO https://raw.githubusercontent.com/gibiansky/IHaskell/master/requirements.txt
# pip3 install --user -r requirements.txt
# stack install gtk2hs-buildtools
# stack install ihaskell
# ihaskell install
# stack install ihaskell-hatex
# stack install ihaskell-plot
# stack install hmatrix
# stack install graphviz
# stack install tabular
# stack install repa
# stack install repa-algorithms
# 
# # IRuby
# sudo dnf -y install libtool czmq czmq-devel zeromq zeromq-devel
# gem install cztop iruby
# iruby register --force
# 
# # IJavascript
# npm install -g ijavascript
# ijsinstall
