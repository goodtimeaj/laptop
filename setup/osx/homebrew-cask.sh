#!/bin/bash
# Installs Homebrew Cask and select Cask packages.

# Install Brew Cask
brew tap phinze/homebrew-cask

# Make the Cask room for the first time
brew cask

# Remove outdated package versions from the cellar
brew cleanup

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Brew Cask packages
brew cask install google-chrome
# brew cask install google-chrome-canary
brew cask install firefox
brew cask install dropbox
brew cask install karabiner
brew cask install seil
brew cask install sublime-text
brew cask install slate
brew cask install virtualbox
# brew cask install sequel-pro
# brew cask install vagrant
# brew cask install opera
# brew cask install silverlight
# brew cask install livereload
# brew cask install alfred
# brew cask install google-hangouts
