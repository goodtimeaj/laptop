#!/bin/bash
# Updates software and packages for OS X.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

sh "${here}/osx/system.sh"
sh "${here}/osx/homebrew.sh"
sh "${here}/shared/rubygems.sh"
sh "${here}/shared/npm.sh"
