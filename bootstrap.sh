#!/bin/bash
# Clones laptop into $HOME and runs `./install.sh`.

# Exits with given error message
die() {
  echo "$@"
  exit 1
}

# Clone laptop into $HOME and cd into it
git clone https://github.com/gregstallings/laptop.git "${HOME}/laptop" \
  || die "Could not clone the repository to ${HOME}/laptop"

sh "${HOME}/laptop/install.sh"
