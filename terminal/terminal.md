# Terminal

## Required packages

- [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
- [ohmyzsh](https://ohmyz.sh/)
- The following should be cloned into `~/.oh-my-zsh/custom/plugins`
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)


## Configuration

If you already have a `.zshrc` file in your home directory then delete, move, rename or whatever it so we can replace it with a symlink to the tracked dotfile version.

```bash
cd ~
ln dotfiles/terminal/.zshrc .
```
