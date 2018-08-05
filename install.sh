#!/bin/bash

# Welcome
# Custom dotfiles to get you started with Mac OS X machine for development
# Author: Mohamed Ismail -> https://github.com/realdreamer/
# Source: https://github.com/realdreamer/mac-frontend-dev-setup

## Custom color codes and utility functions
source ./helper/utils.sh

# Welcome Message

e_bold "${tan}

Welcome!

Setup your OS X machine for development at ease....."

e_header "Start setting up custom OSX configuration";

source ./brew.sh

source ./gitconfig.sh

source ./terminal.sh

source ./nvm.sh

source ./npm.sh

source ./applications.sh

source ./vscode_packages.sh

source ./chrome.sh

source ./nativescript.sh

source ./powerline_fonts.sh

source ./osx.sh

e_thanks "Author: Mohamed Ismail -> https://github.com/realdreamer \n"

echo "🍺  Thats all, Done. Note that some of these changes require a logout/restart to take effect."
