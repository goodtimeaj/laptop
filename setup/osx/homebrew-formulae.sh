#!/bin/bash
# Installs select Homebrew packages.

# Update available formulae
brew update

# Install Homebrew packages
brew install git
brew install vim
brew install tmux
brew install tree
brew install ack
brew install mercurial
brew install ctags
brew install ssh-copy-id
brew install cmake
brew install wget
brew install colordiff
# brew install openssl
# brew install heroku-toolbelt
# brew install nmap
# brew install ngrep
# brew install the_silver_searcher
# brew install lesspipe
# brew install htop
# brew install imagemagick
# brew install irssi
# brew install qt

# Force symlink openssl to `/usr/local/bin`
# brew link --force openssl

# Enable copy-paste in tmux http://goo.gl/DN82E
# Enable RubyMotion in tmux http://goo.gl/WDlCy
brew install reattach-to-user-namespace

# Install updated bash
brew install bash

# Add new /usr/local/bin/bash to list of acceptable shells
sudo -s 'echo "/usr/local/bin/bash" >> /etc/shells'

# Change shell to the updated bash
export SHELL="/usr/local/bin/bash"
chsh -s /usr/local/bin/bash

# Install MySQL
# brew install mysql

# Install PostgreSQL and create a database
# brew install postgresql # --no-python
# initdb /usr/local/var/postgres -E utf8

# Install GNU core utilities
# brew install coreutils

# Install GNU g-prefixed find, locate, updatedb, and xargs
# brew install findutils
