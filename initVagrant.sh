#!/usr/bin/env bash
#   Username (your email) to be provided as script arguments, 
#   for setting git username and email on first install
USERNAME=${1?Error: please provide git username}
git config --global user.name $USERNAME

# This will install vagrant, set your git username and passwords, and run the install script.
brew update
brew cask install vagrant


# Running the install script for VVV
chmod +x initVVV.sh
./initVVV.sh

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/

