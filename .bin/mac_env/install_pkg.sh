/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install sl
brew install fish

echo /usr/local/bin/fish | sudo tee -a /etc/shells

# 非表示ファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true