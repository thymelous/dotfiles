#!/bin/bash

# Text editing
sudo dnf -y install vim vim-X11 fzf the_silver_searcher inotify-tools xsel ripgrep

# Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf -y install code
for e in \
  zhuangtongfa.material-theme \
  vscodevim.vim \
  matklad.rust-analyzer \
  vadimcn.vscode-lldb \
  JakeBecker.elixir-ls \
  CADENAS.vscode-glsllint \
  justusadam.language-haskell \
  haskell.haskell \
  twxs.cmake \
  ms-vscode.cmake-tools \
  ms-vscode.cpptools \
  ms-python.python \
  ms-vscode.vs-keybindings \
  ms-vscode-remote.remote-ssh \
  ms-vsliveshare.vsliveshare \
  hediet.vscode-drawio
do
  code --install-extension $e
done

# CLI HTTP client
sudo dnf -y install httpie 
sudo pip3 install http-prompt

# Wine
sudo dnf install wine winetricks
winetricks -q vcrun2012
