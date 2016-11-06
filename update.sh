#!/bin/bash
# Delegates to update script.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

sh "${here}/update/update.sh"
