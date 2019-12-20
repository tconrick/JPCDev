#!/usr/bin/env bash
#   Username and email to be provided as script arguments, 
#   for setting git username and email on first install
USERNAME=${1?Error: please provide git username}
EMAIL=${1?Error: please provide git email}
git config --global user.name $USERNAME
git config --global user.email $EMAIL

# This will install vagrant, set your git username and passwords, and run the install script.
brew update
brew cask install vagrant
# Install ing a plugin for VVV
vagrant plugin install vagrant-hostsupdater

# Running the install script for VVV
./initVVVJPCDev.sh

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/

