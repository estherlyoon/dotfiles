#!/bin/bash
# Must run this after stow
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
echo "Cloning zsh plugins to ${ZSH_CUSTOM}/plugins"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions
