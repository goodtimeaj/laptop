#!/bin/bash
# Installs select Homebrew packages.

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Check for possible issues with Homebrew install
brew doctor
