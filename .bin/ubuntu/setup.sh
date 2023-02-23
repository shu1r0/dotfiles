#!/usr/bin/env bash

## Run after install.sh

apt install -y fish curl

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install laughedelic/fish_logo

chsh -s /usr/bin/fish
# fish