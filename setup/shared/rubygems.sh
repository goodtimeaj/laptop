#!/bin/bash
# Upgrades RubyGems and installs select gems.

# Upgrade RubyGems
gem update --system

# Gems for development
gem install bundler rails compass
# gem install thin foreman zeus

# Database gems
# gem install mysql2
# env ARCHFLAGS="-arch x86_64" gem install pg

# Gems for debugging
gem install pry awesome_print
# gem install pry-debugger

# Git gems
# gem install gist grb --no-document

# Install hub as standalone for faster startup time
# gem install hub --no-document
# hub hub standalone > "${HOME}/bin/hub" && chmod +x "${HOME}/bin/hub"
