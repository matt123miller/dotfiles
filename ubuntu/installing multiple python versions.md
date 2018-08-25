https://askubuntu.com/a/865644



I would recommend pyenv to solve your woes. It doesn't use Aptitude, and does involve "building it yourself", but it's fully automated. You can build and install a new (or old) version of Python by simply saying pyenv install 3.6.0. Everything runs as your user, so you don't have to worry about messing up the Python used by Ubuntu itself.

# Install pyenv

Install headers needed to build CPythons (exotic Pythons like PyPy or Jython may have other dependencies):

```bash
sudo apt-get install -y build-essential libbz2-dev libssl-dev libreadline-dev libsqlite3-dev tk-dev`

# optional scientific package headers (for Numpy, Matplotlib, SciPy, etc.)
sudo apt-get install -y libpng-dev libfreetype6-dev
```

Run the installer script (installs pyenv and some very useful pyenv plugins by the original author; see here for more)

`curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash`

Add init lines to your ~/.profile or ~/.zshrc (it mentions it at the end of the install script):

`zshconfig` then do this path stuff

export PATH=~/.pyenv/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

Restart your shell (close & open or exec $SHELL) or reload the profile script. (with e.g. source ~/.zshrc)

Done!

# Setting up an environment

To not touch the system Python (generally a bad idea; OS-level services might be relying on some specific library versions, etc.) make your own environment, it's easy! Even better, no sudo, for it or pip installs!

Install your preferred Python version (this will download the source and build it for your user, no input required)

`pyenv install 3.6.0`

Make it a virtualenv so you can make others later if you want

`pyenv virtualenv 3.6.0 general`

Make it globally active (for your user)

`pyenv global general`

Do what you want to with the Python/pip, etc. It's yours.

If you want to clean out your libraries later, you could delete the virtualenv (pyenv uninstall general) or make a new one (pyenv virtualenv 3.6.0 other_proj). You can also have environments active per-directory: pyenv local other_proj will drop a .python-version file into your current folder and any time you invoke Python or pip-installed Python utilities from it or under it, they will be shimmed by pyenv.

# Troubleshooting

`bash: pyenv: command not found, fish: Unknown command 'pyenv'`
Check your $PATH, there should be one entry that ends in something like .pyenv/bin. If it's missing make sure you followed #3 AND #4 (restart your shell) under Install pyenv above.

`pyenv: no such command 'virtualenv'`
If you didn't use the installer script, you likely only installed the root pyenv package. See pyenv-virtualenv for instructions to add the plugin
If you used the installer script, check if it shows up with pyenv commands.

