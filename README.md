# dotfiles
My beautiful and lovely dotfiles.

## List
Below is a list of tools to manage the configuration files for this repository.

- Git
- HomeBrew
- ideavim
- Karabiner
- kitty
- neovim
- tmux
- Vim
- zsh

## [WIP] Usage
Clone this repository to your home directory.

```sh
$ git clone git@github.com:tksx1227/dotfiles.git ${HOME}/dotfiles
```

After the repository clone, run init only once for the first time.

It is not necessary to run `init` again to reflect configuration changes.

```sh
$ cd ~/dotfiles
$ make init
```

Running `all` will create symbolic links to the various configuration files in the appropriate directories.

```sh
$ make all
```

If you do not want to create a symbolic link for all configuration files, but only a specific configuration file, use `make <TOOL_NAME>` to create a symbolic link only for the configuration file of the specified tool.

```sh
# ex. Create only symbolic links to zsh configuration files.
$ make zsh

# You can run `help` to see what targets can be specified.
$ make help
homebrew-init        Install HomeBrew on your device.
homebrew             Install the tools and apps listed in the Brewfile.
kitty                Create symbolic link to kitty configuration file.
...
```
