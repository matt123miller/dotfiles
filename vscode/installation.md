## Mac

```shell
cd ~/Library/Application\ Support/Code/User
ln -s ~/dotfiles/vscode/settings.json .
ln -s ~/dotfiles/vscode/keybindings.json .
```

Check `extensions.md` for the extensions I currently use.

## Windows

For some reason absolute pathing it has been easier. This is also run through powershell hence the call to cmd.

```shell
cmd /c mklink 'C:\Users\Matt1\AppData\Roaming\Code\User\settings.json' 'C:\dotfiles\vscode\settings.json'
cmd /c mklink 'C:\Users\Matt1\AppData\Roaming\Code\User\keybindings.json' 'C:\dotfiles\vscode\keybindings.json'
```

## Ubuntu

```bash
cd ~/.config/Code/User/
```
