#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget` with IRI support.
brew install wget --with-iri

# Install brew important packages
brew install vim --with-override-system-vi
brew install tree
brew install grep
brew install git
brew install openssh
brew install openssl
brew install mongodb

# Install Deployment based application
brew install ansible
brew install awscli
brew install kubernetes-cli

#Install brew MISC

brew install youtube-dl

# Setup NativeScript

sudo gem install xcodeproj

sudo gem install cocoapods

pod setup

pip install six

# Install Java8
brew tap caskroom/versions

brew cask install java8

# Set the JAVA_HOME system environment variable.
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

#Install the Android SDK.
brew cask install android-sdk

# Set the ANDROID_HOME system environment variable.
export ANDROID_HOME=/usr/local/share/android-sdk

$ANDROID_HOME/tools/bin/sdkmanager "tools" "platform-tools" "platforms;android-25" "build-tools;27.0.3" "extras;android;m2repository" "extras;google;m2repository"


# Remove outdated versions from the cellar.
brew cleanup
