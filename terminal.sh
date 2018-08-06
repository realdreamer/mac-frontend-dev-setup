#!/usr/bin/env bash

# Install and setup terminals using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Install ZSH
brew install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install zsh-syntax-highlighting
brew install zsh-syntax-highlighting

# Install zsh-completeions
brew install zsh-completions

# Install zsh-autosuggestions
brew install zsh-autosuggestions

# Install Material Design Color Scheme for iterm

# Download the iterms colors

curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors

