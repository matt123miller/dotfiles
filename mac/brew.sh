#!/bin/sh


if ! command -v brew &> /dev/null
then
    echo "homebrew isn't installed, installing now."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/matt/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "homebrew is installed, continue"
fi

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
brew install --cask 1password
brew install --cask alfred
brew install --cask docker
brew install --cask firefox
brew install --cask gitkraken
brew install --cask google-chrome
brew install --cask imageoptim
brew install --cask iterm2
brew install --cask obs
brew install --cask spotify
brew install --cask the-unarchiver
brew install --cask visual-studio-code


# Validate and cleanup

brew doctor
brew cleanup --prune=all -s -v

echo 'brew.sh finished'