#!/bin/bash
# Configures SSH.

# Back up any existing $HOME/.ssh
if [ -d "${HOME}/.ssh" ]; then
  cp -Rv "${HOME}/.ssh" "${HOME}/.ssh.old"
fi

# Create new ssh keys (prompts stdin)
ssh-keygen -t rsa -C "gregstallings@gmail.com"

# Copy the key to the clipboard
if [ "$(uname -s)" = "Darwin" ]; then
  pbcopy < "${HOME}/.ssh/id_rsa.pub"
fi

echo "Waiting for user to complete SSH setup. Press <Return> when ready..."
read tmp

# Clear the clipboard
if [ "$(uname -s)" = "Darwin" ]; then
  pbcopy < /dev/null
fi
