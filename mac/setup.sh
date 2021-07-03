#!/bin/sh

# Install XCode and Commando Line Tools
xcode-select --install

# Install homebrew
/usr/bin/ruby -e "  $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Look at the famous macos setup script here for inspo https://github.com/mathiasbynens/dotfiles/tree/master

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Cask for Versions
brew tap caskroom/versions

# CLI
brew install git
brew install nvm
brew install docker-completion
brew install bash-completion
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install imagemagick

# Apps
brew install --cask alfred
brew install --cask docker
brew install --cask firefox
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask spotify
brew install --cask gitkraken
brew install --cask imageoptim
brew install --cask obs

