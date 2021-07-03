#!/bin/sh

# Install XCode and Commando Line Tools
xcode-select --install

# Install home-brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/matt/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"

# Look at the famous macos setup script here for inspo https://github.com/mathiasbynens/dotfiles/tree/master

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"


# Set some git defaults like name, email etc.