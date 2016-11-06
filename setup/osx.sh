#!/bin/bash
# Sets up a new OS X machine for development.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

# Create directories
mkdir -v "${HOME}/code"
mkdir -v "${HOME}/dropbox"
mkdir -v "${HOME}/p"
mkdir -v "${HOME}/sites"

# Remove default system junk
rm -rf "${HOME}/Downloads/*"

echo "Choose a location for notes:"
read notes_dir
ln -sfvn "$notes_dir" "${HOME}/notes"

sh "${here}/osx/homebrew.sh"
sh "${here}/osx/homebrew-formulae.sh"
sh "${here}/osx/homebrew-dupes.sh"

echo "Press <Return> to continue and install Ruby"
read tmp

sh "${here}/osx/ruby.sh"
sh "${here}/shared/rubygems.sh"

echo "Press <Return> to continue and install pip"
read tmp

sh "${here}/osx/python.sh"

echo "Press <Return> to continue and install Node"
read tmp

sh "${here}/osx/node.sh"
sh "${here}/shared/npm.sh"

echo "Press <Return> to continue and install Homebrew casks"
read tmp

sh "${here}/osx/homebrew-cask.sh"

echo "Press <Return> to continue running OS X defaults..."
read tmp

sh "${here}/osx/osx.sh"
