#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "ismailreality1@gmail.com"
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_rsa
