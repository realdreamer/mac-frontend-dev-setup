#!/bin/bash

source helper/utils.sh

if test ! $(which nvm); then
  e_header "Installing zsh-nvm.."

  git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

  ## To setup npm install/update -g without sudo
  cp npmrc ~/.npmrc
  export PATH="$HOME/.node/bin:$PATH"
  sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}

  ## Set npm global config
  npm config set init.author.name "Mohamed Ismail" ## Replace it with your name
  npm config set init.author.email "ismailreality1@gmail.com" ## Replace it with your email id
else
  e_warning "NVM is already installed. Skipping.."
fi
