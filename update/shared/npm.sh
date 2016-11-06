#!/bin/bash
# Updates npm and installed modules.

# cd into $HOME so any npm-debug.log ends up in $HOME
cd $HOME

# Update npm
npm install npm@latest -g

# Update installed modules
npm update -g

# cd back
cd -
