#!/bin/bash
# Exports custom launch agents into user launch agents path.

here=$(dirname "$0") && here=$(cd "$here" && pwd -P)

local_launch_agents_path="${here}/agents"
global_launch_agents_path="/Library/LaunchAgents"

cd "$local_launch_agents_path"

for file in *; do
  target="${global_launch_agents_path}/${file}"
  sudo ln -sfv "${local_launch_agents_path}/${file}" "$target"
done
