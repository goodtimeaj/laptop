#!/bin/bash
# Delegates to system-specific preferences export scripts.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

if [ "$(uname -s)" = "Darwin" ]; then
  sh "${here}/osx/export.sh"
fi
