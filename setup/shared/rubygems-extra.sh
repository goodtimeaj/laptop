#!/bin/bash
# Installs extra gems. This script should not be executed by any automated
# setup.

# Optional Git gems
gem install git-deploy git-smart omglog github-auth

# Gems for introspection
gem install ruby_parser file-tail sourcify
