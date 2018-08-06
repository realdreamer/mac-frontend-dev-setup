#!/usr/bin/env bash

source ./helper/utils.sh



ask "${blue} (Option) Enter Your GitHub Email for SSH Key: "
read -r emailId
if is_empty $emailId; then
  ssh-keygen -t rsa -b 4096 -C "$emailId"
	eval "$(ssh-agent -s)"
	ssh-add -K ~/.ssh/id_rsa
	# Copying SSH Key to clipboard
	pbcopy < ~/.ssh/id_rsa.pub
  e_success "SSH key is copied to clipboard"
else
  e_error "Not set"
fi
