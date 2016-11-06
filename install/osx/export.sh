#!/bin/bash
# Exports OS X application and system settings from this repository.

# Export Karabiner settings
sh "${HOME}/karabiner-config/export.sh"

# Export custom launch agents
sh "${HOME}/laptop/launch_agents/export.sh"

# Export Sublime Text user settings
sh "${HOME}/sublime-config/install.sh"
