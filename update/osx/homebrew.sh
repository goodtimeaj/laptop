#!/bin/bash
# Updates Homebrew, available formulae, installed packages, and removes
# outdated packages.

# Upgrade Homebrew and update available formulae
sudo brew update

# Upgrade installed packages
brew upgrade

# Remove outdated package versions from the Cellar
brew cleanup
