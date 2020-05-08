#!/usr/bin/env bash
#   Username (your email) to be provided as script arguments, 
#   for setting git username/email on first install
USERNAME=${1?Error: please provide git username aka your email}
git config --global user.name $USERNAME

# This will install vagrant, set your git username and passwords, and run the install script.
brew cask install vagrant
chmod +x updateSetup.sh
./updateSetup.sh

# Running the install script for VVV
chmod +x initVVV.sh
./initVVV.sh

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/

