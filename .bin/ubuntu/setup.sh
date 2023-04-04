#!/usr/bin/env bash

## Run after install.sh

sudo apt install -y fish curl

fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fish -c "fisher install laughedelic/fish_logo"

chsh -s /usr/bin/fish
# fish