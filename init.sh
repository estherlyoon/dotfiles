#!/bin/bash
# Linux initialization
# Ubuntu-specific initialization marked with U

git submodule update --init --recursive

# install GNU stow
sudo apt-get update -y # U
sudo apt-get install -y stow # U

# install nvim
# if you don't have superuser privileges and neovim isn't installed, run nvim-local-linux.sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# Put dotfiles in the right places
stow nvim
stow vim
stow zsh
stow tmux

# Install zsh plugins
bash zsh-deps.sh

# Change default shell to zsh
sudo usermod -s $(which zsh) $USER
zsh
