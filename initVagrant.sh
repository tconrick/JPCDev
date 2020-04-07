#!/usr/bin/env bash
#   Username (your email) to be provided as script arguments, 
#   for setting git username/email on first install
USERNAME=${1?Error: please provide git username aka your email}
git config --global user.name $USERNAME

# This will install vagrant, set your git username and passwords, and run the install script.
brew update
brew cask install vagrant

# Install ing a plugin for VVV
vagrant plugin install vagrant-hostsupdater

# Running the install script for VVV
chmod +x initVVV.sh
./initVVV.sh

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/

