#!/bin/bash
# Installs ruby-build and rbenv, and sets the global Ruby version.

# Install Homebrew packages for Ruby management
brew install rbenv

# Note: Only need xQuartz for Tcl/Tk bindings

# Install the latest version of Ruby
rbenv install -v 2.3.1
rbenv global 2.3.1
rbenv rehash

# Subsequent scripts may rely on updated Ruby version so add rbenv shims to
# the PATH
export RBENV_ROOT="${HOME}/.rbenv"
export PATH="${RBENV_ROOT}/shims:${PATH}"
eval "$(rbenv init -)"
