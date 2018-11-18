#!/usr/bin/env bash

source ./helper/utils.sh

e_header "NativeScript setup is starting....."

# Setup NativeScript
#
gem install xcodeproj --user-install

gem install cocoapods --user-install

pod setup

pip install six

# Install Java8
brew tap caskroom/versions

brew cask install java8

# Set the JAVA_HOME system environment variable.
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
echo "export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)" >> ~/.zshrc

#Install the Android SDK.
brew cask install android-sdk

# Set the ANDROID_HOME system environment variable.
export ANDROID_HOME=/usr/local/share/android-sdk
echo "export ANDROID_HOME=/usr/local/share/android-sdk" >> ~/.zshrc

$ANDROID_HOME/tools/bin/sdkmanager "tools" "platform-tools" "platforms;android-25" "build-tools;27.0.3" "extras;android;m2repository" "extras;google;m2repository"

npm i -g nativescript

export PATH=$PATH:~/.npm-packages/bin

e_success "🍻 NativeScript packages installation is done...!"
