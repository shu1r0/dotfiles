#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install sl
brew install fish
# brew install --cask mactex-no-gui
# sudo tlmgr update --self --all
brew install sstp-client
sudo touch /etc/ppp/options

# 非表示ファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true

fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fish -c "fisher install laughedelic/fish_logo"

echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
