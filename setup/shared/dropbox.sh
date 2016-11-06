#!/bin/bash
# Installs Dropbox cli to ~/bin.

curl -fsSO "https://www.dropbox.com/download?dl=packages/dropbox.py"
mv dropbox.py "${HOME}/bin/dropbox"
sudo chmod +x "${HOME}/bin/dropbox"
