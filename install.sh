#!/bin/bash
# Sets up a new development machine.
#
# Prerequisites: Install Xcode
#
# `git clone https://github.com/gregstallings/laptop.git $HOME/laptop`

# Exits with given error message
die() {
  echo "$@"
  exit 1
}

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)
cd "$here"

# Install OS X command line tools
xcode-select --install

# Configure SSH
sh "${here}/setup/shared/ssh.sh"

# Configure a minimum set of values for git
git config --global user.name gregstallings
git config --global user.email gregstallings@gmail.com

# Change the remote origin for this repository to SSH
git remote rm origin
git remote add origin git@github.com:gregstallings/laptop.git

# Configure master for this repository
git config branch.master.remote 'origin'
git config branch.master.merge 'refs/head/master'

if [ -d "${HOME}/dotfiles" ]; then
  cp -Rv "${HOME}/dotfiles" "${HOME}/dotfiles.old"
fi

if [ -d "${HOME}/vimfiles" ]; then
  cp -Rv "${HOME}/vimfiles" "${HOME}/vimfiles.old"
fi

# Clone dotfiles into $HOME
git clone git@github.com:gregstallings/dotfiles.git "${HOME}/dotfiles" \
  || die "Could not clone the repository to ${HOME}/dotfiles"

# Clone vimfiles into $HOME
git clone git@github.com:gregstallings/vimfiles.git "${HOME}/vimfiles" \
  || die "Could not clone the repository to ${HOME}/vimfiles"

# Clone sublime-config into $HOME
git clone git@github.com:gregstallings/sublime-config.git "${HOME}/sublime-config" \
  || die "Could not clone the repository to ${HOME}/sublime-config"

# Clone karabiner-config into $HOME
git clone git@github.com:gregstallings/karabiner-config.git "${HOME}/karabiner-config" \
  || die "Could not clone the repository to ${HOME}/karabiner-config"

# Install dotfiles with option to install git submodules
sh "${HOME}/dotfiles/install.sh" -s

# Install vimfiles with option to install git submodules
sh "${HOME}/vimfiles/install.sh" -s

# Run setup scripts
echo "Waiting to run setup scripts. Press <Return> when ready..."
read tmp

sh "${here}/setup/setup.sh"

echo "Press <Return> to restart and continue setup..."
read tmp

if [ "$(uname -s)" = "Darwin" ]; then
  sudo shutdown -r now
fi

sh "${here}/install/setup.sh"
