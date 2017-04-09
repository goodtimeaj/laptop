#!/bin/bash
# Installs ievms.
# https://github.com/xdissent/ievms
# Dependencies: virtualbox
# WARNING: Installation may take hours
# Install size ~86G

sudo curl -s https://raw.github.com/xdissent/ievms/master/ievms.sh | env REUSE_XP="no" IEVMS_VERSIONS="9 10 11 EDGE" bash
