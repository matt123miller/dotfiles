
echo 'Installing starship prompt - https://starship.rs'

brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc

echo "Validate and cleanup"

brew doctor
brew cleanup --prune=all -s -v

echo "Refresh terminal"

source ~/.zshrc
