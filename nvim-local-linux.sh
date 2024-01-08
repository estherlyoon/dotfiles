#!/bin/bash
# Assuming that $HOME/bin is on your path
wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -zxvf nvim-linux64.tar.gz
mkdir -p $HOME/bin
cp nvim-linux64/bin/nvim $HOME/bin
