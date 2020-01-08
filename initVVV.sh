#!/usr/bin/env bash

# Note: This script assumes you have git and vagrant both installed.

# Install ing a plugin for VVV
vagrant plugin install vagrant-hostsupdater
# Clones the VVV parentDirectory to your JPC Devsite
git clone -b master git://github.com/Varying-Vagrant-Vagrants/VVV.git
# Overrides config file with JPCDev site pre-configured
cp -v default-config.yml VVV/config/default-config.yml
# This moves to VVV, and goes through the vagrant up process twice;
# So that VVV can load it's dependencies, then go through a fresh load.
cd VVV && (yes | vagrant up) 
&& vagrant up
# This next section uses the Customfile to insert a line in the Vagrantfile, creating a localResources folder.
echo "# Customfile insert: Including localResources folder, outside VVV, in JPCDev." >> Customfile
echo "" >> Customfile
parentDir=$(cd ../ && pwd) && echo "config.vm.synced_folder \"$parentDir/localResources\", \"/srv/www\", create: true" >> Customfile
vagrant reload

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/
