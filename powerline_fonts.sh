#!/usr/bin/env bash

# clone
git clone https://github.com/powerline/fonts.git --depth=1

# install
cd fonts
./install.sh

# clean-up a bit
cd ..
rm -rf fonts

brew tap caskroom/fonts
brew cask install font-fira-code
brew cask install font-hack-nerd-font
