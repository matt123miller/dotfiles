#!/bin/sh

# Brew docs
# https://docs.brew.sh/

if ! command -v brew &> /dev/null
then
    echo "homebrew isn't installed, installing now."

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/matt/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo "homebrew is installed, continue"
fi

echo "Add any required casks"
brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

echo "CLI tools"
brew install git
brew install nvm
brew install docker-completion
brew install bash-completion
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting
brew install imagemagick
brew install font-fira-code-nerd-font


echo "GUI apps"
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

echo "Adding zsh plugins to .zshrc"
# Currently not repeatable though, not sure how I'd solve that.
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc



echo 'brew.sh finished'
echo 'Installing starship prompt - https://starship.rs'

brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo "Validate and cleanup"

brew doctor
brew cleanup --prune=all -s -v

echo "Refresh terminal"

source ~/.zshrc