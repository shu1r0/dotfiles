/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install sl
brew install fish

echo /usr/local/bin/fish | sudo tee -a /etc/shells

# 非表示ファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true

curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install laughedelic/fish_logo

brew install --cask mactex-no-gui
sudo tlmgr update --self --all  

