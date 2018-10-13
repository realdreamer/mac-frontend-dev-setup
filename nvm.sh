#!/bin/bash

source helper/utils.sh

if test ! $(which nvm); then
  e_header "Installing NVM."

	brew update
  brew install nvm

  ## To setup npm install/update -g without sudo
  cp npmrc ~/.npmrc

	echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc

  ## Set npm global config
  npm config set init.author.name "Mohamed Ismail" ## Replace it with your name
  npm config set init.author.email "ismailreality1@gmail.com" ## Replace it with your email id
else
  e_warning "NVM is already installed. Skipping.."
fi
