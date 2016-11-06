#!/bin/bash
# Installs npm and selected packages.

# npm is installed with `brew install node`

# Ensure npm version is latest
npm install npm@latest -g

# cd into home so any npm-debug.log ends up in $HOME
cd "$HOME"

# Build local index for the first time using any random search query
npm search asdfasdfasdfasdf

# Install npm packages
npm install -g grunt-cli
npm install -g bower
# npm install -g mocha
# npm install -g browserify
# npm install -g express
# npm install -g yo
# npm install -g generator-webapp

# Manage ievms virtual machines, useful for reinstalls
# npm install -g iectrl
