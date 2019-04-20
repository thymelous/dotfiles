#!/bin/bash

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-completions.git ~/.zsh/zsh-completions
chsh -s $(which zsh)
