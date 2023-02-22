#!/usr/bin/env bash

## Run after install.sh

apt install -y fish curl

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install laughedelic/fish_logo

chsh -s /usr/bin/fish
fish