# This script is for updating the current setup in the case of patches from:
# vagrant, its plugins and the ubuntu vm box etc
brew cask upgrade && brew cask upgrade vagrant
brew upgrade git
vagrant box update
vagrant plugin update

# For the VirtualBox provider, it is much easier to just update it from the GUI.