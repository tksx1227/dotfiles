SEPARATOR:="\\033[36m===============================================================\\033[0m"
DOTFILES_DIR := $(shell pwd)
CONFIG_DIR := $(HOME)/.config
GIT_DIR := $(CONFIG_DIR)/git
KITTY_DIR := $(CONFIG_DIR)/kitty
ZSH_DIR := $(CONFIG_DIR)/zsh
KARABINER_DIR := $(CONFIG_DIR)/karabiner

# tmux
TPM_REPO_SRC := https://github.com/tmux-plugins/tpm
TPM_LOCAL_REPO := $(HOME)/.tmux/plugins/tpm

.PHONY: build
build: all

.PHONY: all
all: kitty zsh git tmux vim nvim ideavim karabiner

.PHONY: init
init: homebrew-init

.PHONY: homebrew-init
homebrew-init:  ## Install HomeBrew on your device.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Installing MacOS package manager Homebrew...\033[0m"
	@sudo true
	@curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sudo -u $$USER /bin/bash
	@echo "Done!"

.PHONY: homebrew
homebrew:  ## Install the tools and apps listed in the Brewfile.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Installing apps managed by Homebrew...\033[0m"
	@ln -svf $(DOTFILES_DIR)/homebrew/.Brewfile $(HOME)/.Brewfile
	@brew update
	@brew upgrade
	@brew bundle -v --global
	@echo "Done!"

.PHONY: kitty
kitty: config  ## Create symbolic link to kitty configuration file.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building kitty configuration...\033[0m"
	@mkdir -p $(KITTY_DIR)
	@ln -svf $(DOTFILES_DIR)/kitty/kitty.conf $(KITTY_DIR)/kitty.conf
	@echo "Done!"

.PHONY: zsh
zsh: config  ## Create symbolic links to zsh configuration files.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building zsh configuration...\033[0m"
	@mkdir -p $(ZSH_DIR)
	@ln -svf $(DOTFILES_DIR)/zsh/.zshenv $(HOME)/.zshenv
	@ln -svf $(DOTFILES_DIR)/zsh/.zshrc $(ZSH_DIR)/.zshrc
	@ln -svf $(DOTFILES_DIR)/zsh/alias.zsh $(ZSH_DIR)/alias.zsh
	@ln -svf $(DOTFILES_DIR)/zsh/exports.zsh $(ZSH_DIR)/exports.zsh
	@ln -svf $(DOTFILES_DIR)/zsh/functions.zsh $(ZSH_DIR)/functions.zsh
	@ln -svf $(DOTFILES_DIR)/zsh/options.zsh $(ZSH_DIR)/options.zsh
	@ln -svf $(DOTFILES_DIR)/zsh/path.zsh $(ZSH_DIR)/path.zsh
	@ln -svf $(DOTFILES_DIR)/zsh/plugins.zsh $(ZSH_DIR)/plugins.zsh
	@ln -svf $(DOTFILES_DIR)/zsh/prompt.zsh $(ZSH_DIR)/prompt.zsh
	@echo "Done!"

.PHONY: git
git: config  ## Create symbolic links to Git configuration files.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building git configuration...\033[0m"
	@mkdir -p $(GIT_DIR)
	@ln -svf $(DOTFILES_DIR)/git/.gitconfig $(HOME)/.gitconfig
	@ln -svf $(DOTFILES_DIR)/git/.commit_template $(GIT_DIR)/.commit_template
	@ln -svf $(DOTFILES_DIR)/git/.gitignore_global $(GIT_DIR)/.gitignore_global
	@echo "Done!"

.PHONY: tmux
tmux:  ## Create symbolic link to tmux configuration file.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building tmux configuration...\033[0m"
	@ln -svf $(DOTFILES_DIR)/tmux/.tmux.conf $(HOME)/.tmux.conf
	@git clone "$(TPM_REPO_SRC)" "$(TPM_LOCAL_REPO)" 2> /dev/null || git -C "$(TPM_LOCAL_REPO)" pull
	@echo "Done!"

.PHONY: vim
vim:  ## Create symbolic link to Vim configuration file.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building vim configuration...\033[0m"
	@ln -svf $(DOTFILES_DIR)/vim/.vimrc $(HOME)/.vimrc
	@echo "Done!"

.PHONY: nvim
nvim: config  ## Create symbolic links to Neovim configuration files.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building neovim configuration...\033[0m"
	@ln -svf $(DOTFILES_DIR)/nvim $(CONFIG_DIR)/
	@echo "Done!"

.PHONY: ideavim
ideavim:  ## Create symbolic link to ideavim configuration file.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building ideavim configuration...\033[0m"
	@ln -svf $(DOTFILES_DIR)/ideavim/.ideavimrc $(HOME)/.ideavimrc
	@echo "Done!"

.PHONY: karabiner
karabiner:  ## Create symbolic link to Karabiner configuration directory.
	@echo "$(SEPARATOR)"
	@echo "\033[36m==> Building karabiner configuration...\033[0m"
	@ln -svfn $(DOTFILES_DIR)/karabiner $(KARABINER_DIR)
	@echo "Done!"

.PHONY: config
config:
	@mkdir -p $(CONFIG_DIR)

.PHONY: help
help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
