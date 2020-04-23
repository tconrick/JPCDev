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
cd vagrant-local && (yes | vagrant up) 
# This next section uses the Customfile to insert a line in the Vagrantfile, creating a localResources folder.
# chmod +x createCustomFile.sh
# vagrant reload --provision
cd ..
# cp -i plugins/wp-migrate-db-pro-1.9.10.zip plugins/wp-migrate-db-pro-cli-1.3.5.zip plugins/wp-migrate-db-pro-media-files-1.4.4.zip plugins/wp-migrate-db-pro-multisite-tools-1.2.6.zip plugins/wp-migrate-db-pro-theme-plugin-files-1.0.5.zip syncedFolder/jpcDev/public_html/wp-content/plugins 
cp -i plugins/wp-migrate-db-pro-1.9.10.zip plugins/wp-migrate-db-pro-cli-1.3.5.zip plugins/wp-migrate-db-pro-media-files-1.4.4.zip plugins/wp-migrate-db-pro-multisite-tools-1.2.6.zip plugins/wp-migrate-db-pro-theme-plugin-files-1.0.5.zip  vagrant-local/www/jpcDev/public_html/wp-content/plugins 
# cd syncedFolder/jpcDev/public_html/wp-content/plugins
cd vagrant-local/www/jpcDev/public_html/wp-content/plugins 
unzip wp-migrate-db-pro-1.9.10.zip
unzip wp-migrate-db-pro-cli-1.3.5.zip
unzip wp-migrate-db-pro-media-files-1.4.4.zip
unzip wp-migrate-db-pro-multisite-tools-1.2.6.zip
unzip wp-migrate-db-pro-theme-plugin-files-1.0.5.zip
rm wp-migrate-db-pro-1.9.10.zip
rm wp-migrate-db-pro-cli-1.3.5.zip
rm wp-migrate-db-pro-media-files-1.4.4.zip
rm wp-migrate-db-pro-multisite-tools-1.2.6.zip
rm wp-migrate-db-pro-theme-plugin-files-1.0.5.zip
cd ../../../../../vagrant-local/
vagrant reload --provision

# More info on making and editing VVV sites via conf file at:
# https://www.howtoforge.com/setup-a-local-wordpress-development-environment-with-vagrant/
