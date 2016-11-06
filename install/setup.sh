#!/bin/bash
# Performs initialization logic for `./install.sh` if it is being run for the
# setup process.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

if [ "$(uname -s)" = "Darwin" ]; then

  # Must open Sublime Text for the first time in order to create the Sublime
  # Text `User` directory
  osascript -e 'tell application "Sublime Text" to activate'
  sleep 10
  osascript -e 'tell application "Sublime Text" to quit'

  # Must open Karabiner for the first time in order to create the
  # `~/Library/Application Support/Karabiner` directory
  osascript -e 'tell application "Karabiner" to activate'
  sleep 5
  osascript -e 'tell application "Karabiner" to quit'

  sh "${here}/install.sh"
fi
