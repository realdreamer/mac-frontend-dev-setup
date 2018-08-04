#!/usr/bin/env bash

# Install and setup terminals using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Install ZSH
brew install zsh

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install zsh-syntax-highlighting

brew install zsh-completions

cd Downloads
curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
