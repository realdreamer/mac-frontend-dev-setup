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

# Install Nerd fonts

cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# Add nerd-font-complete setup in zshrc
echo "POWERLEVEL9K_MODE='nerdfont-complete'" >> ~/.zshrc

# Install powerlevel9k theme for oh-my-zsh
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Change theme in .zshrc file ZSH_THEME="powerlevel9k/powerlevel9k"

echo "POWERLEVEL9K_MODE='nerdfont-complete'
source ~/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true" >> ˜/.zshrc

# Install ruby to take some part of gems to be used in zshrc
brew install ruby

# Install colorls and artii for make your terminal more colorful
gem install colorls
gem install artii

# Aliases for list commands with colorful output
echo "alias lsc='colorls'" >> ˜/.zshrc
echo "alias ls='ls -G'" >> ˜/.zshrc

# Print a colorful message when the terminal loads using the artii and lolcat Ruby gems
# You can change the Zsh text from below
artii Zsh ! --font slant | lolcat
