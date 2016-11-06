#!/bin/bash
# Configures heroku toolbelt.

# Set up heroku toolbelt (prompts stdin)
heroku login

# Install heroku-config
heroku plugins:install git://github.com/ddollar/heroku-config.git
