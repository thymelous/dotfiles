#!/bin/bash

asdf plugin-add erlang
asdf plugin-add elixir
asdf plugin-add nodejs
asdf plugin-add ruby

# Ruby
asdf install ruby 2.5.0
asdf global ruby 2.5.0

# IRuby
sudo dnf -y install libtool czmq czmq-devel zeromq zeromq-devel
gem install cztop iruby
iruby register --force

# Node
asdf plugin-add nodejs
rm -rf ~/.asdf/keyrings/nodejs # https://github.com/asdf-vm/asdf-nodejs/issues/65
~/.asdf/plugins/nodejs/bin/import-release-team-keyring
asdf install nodejs 8.12.0
asdf global nodejs 8.12.0
npm install -g npm

# IJavascript
npm install -g ijavascript
ijsinstall

# Wine
sudo dnf install wine winetricks
winetricks -q vcrun2012

# OpenCL driver prerequisites
sudo dnf -y install dkms kernel-devel
