#!/usr/bin/env bash

# 1. Git configuration

e_header "Setup git config (global)"
cp gitignore ~/.gitignore_global  ## Adding .gitignore global
git config --global core.excludesfile "${HOME}/.gitignore_global"

ask "${blue} (Option) Enter Your Github Email: "
read -r emailId
if is_empty $emailId; then
  git config --global user.email "$emailId" ## Git Email Id
  e_success "Email is set"
else
  e_error "Not set"
fi

ask "${blue} (Option) Enter Your Github Username: "
read -r userName
if is_empty $userName; then
  git config --global user.name "$userName" ## Git Username
  e_success "Username is set"
else
  e_error "Not set"
fi

e_success "🍻 Git configuration is complete...!"
