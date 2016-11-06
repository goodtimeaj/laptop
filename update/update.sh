#!/bin/bash
# Delegates to system-specific update scripts for the current system.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

if [ "$(uname -s)" = "Darwin" ]; then
  sh "${here}/osx.sh"
fi

# Reload shell
exec $SHELL -l
