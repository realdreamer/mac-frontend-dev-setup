#!/usr/bin/env bash

# Install command-line tools for xcode
xcode-select --install

# Install Homebrew

if test ! $(which brew); then
  e_header "Installing Homebrew......"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	e_success "🍻 Home brew installed successfully..!"
else
  e_warning "Homebrew is already installed. Skipping.."
fi

#  Check home brew is working fine
e_header "Check homebrew is installed fine..."

brew doctor

# Make sure we’re using the latest Homebrew.
e_header "Update Homebrew to make sure we're using the latest version..."

brew update

e_success "🍻 Update Homebrew version is done...!"

# Upgrade any already-installed formulae.
e_header "Upgrade any already installed formulae..."

brew upgrade

e_success "🍻 Upgrade formulae(s) is done...!"

# Install `wget` with IRI support.
e_header "Installing Homebrew formulaes are started....."

#Installing wget
brew install wget --with-iri

# Installing vim with override
brew install vim --with-override-system-vi

for app in "coreutils" \
	"tree" \
	"git"\
	"grep" \
	"openssh" \
	"openssl" \
	"mongodb" \
	"mcrypt" \
	"ssh-copy-id" \
	"go" \
	"node"\
	"ansible" \
	"awscli" \
	"kubernetes-cli" \
	"heroku/brew/heroku" \
	"youtube-dl" \
	"http-server"; do
	brew install "${app}"
done

e_success "🍻 Brew formulae(s) installation is done..!"

# Remove outdated versions from the cellar.
e_header "Check for outdated brew formulae(s) to clear..."
brew cleanup

e_success "🍻 Brew cleanup is done..!"
