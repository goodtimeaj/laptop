#!/bin/bash
# Installs Homebrew-dupes and select dupe packages.

# Install Homebrew-dupes
brew tap homebrew/dupes

# Need newer `less` for `lesskey`
brew install less

# Install GNU compiler collection needed for Ruby <1.9 compiling
brew install apple-gcc42
