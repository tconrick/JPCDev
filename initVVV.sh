#!/usr/bin/env bash

# Note: This script assumes you have git and vagrant both installed.

# Install ing a plugin for VVV
vagrant plugin install vagrant-hostsupdater
# Clones the VVV parentDirectory to your JPC Devsite
git clone -b master git://github.com/Varying-Vagrant-Vagrants/VVV.git vagrant-local
# Overrides config file with JPCDev site pre-configured
cp -v default-config.yml vagrant-local/config/default-config.yml
# So that VVV can load it's dependencies, then go through a fresh load.
cd vagrant-local && (yes | vagrant up) 
# Then it will call a script to move and unzip the wp-migrate-db plugins into the jpcDev directory
cd ..
./migratePlugins.sh


# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/
