#!/bin/bash

asdf plugin-add erlang
asdf plugin-add elixir
asdf plugin-add nodejs
asdf plugin-add ruby

# Ruby
asdf install ruby 2.5.0
asdf global ruby 2.5.0

# OpenCL driver prerequisites
sudo dnf -y install dkms kernel-devel
