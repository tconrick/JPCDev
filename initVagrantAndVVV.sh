#!/usr/bin/env bash
#   Username and email to be provided as script arguments, 
#   for setting git username and email on first install
USERNAME=${1?Error: please provide git username}
EMAIL=${1?Error: please provide git email}

# tc: "Next 6 lines on 1st ever vagrant and/or git install"
brew update
brew cask install vagrant
git config --global user.name $USERNAME
git config --global user.email $EMAIL
./initVVVJPCDev.sh

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/

