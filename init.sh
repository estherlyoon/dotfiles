#!/bin/bash
git submodule update --init --recursive
bash install-nvim-linux.sh
stow nvim
stow vim
stow zsh
stow tmux
bash zsh-deps.sh
