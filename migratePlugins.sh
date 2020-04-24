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
cd ../../../../../
vagrant reload --provision