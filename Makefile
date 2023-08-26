SEPARATOR:="\\033[36m===============================================================\\033[0m"
DOTFILES_DIR := $(shell pwd)
CONFIG_DIR := ${HOME}/.config
GIT_DIR := ${CONFIG_DIR}/git

# tmux
TPM_REPO_SRC := https://github.com/tmux-plugins/tpm
TPM_LOCAL_REPO := ${HOME}/.tmux/plugins/tpm

.PHONY: build
build: all

.PHONY: all
all: zsh git tmux vim nvim ideavim

.PHONY: init
init: homebrew

.PHONY: homebrew
homebrew:
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Installing MacOS package manager Homebrew...\033[0m"
	@sudo true
	@curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | sudo -u $$USER /bin/bash
	@echo "Done!"

.PHONY: zsh
zsh:
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Building zsh configuration...\033[0m"
	@ln -svf ${DOTFILES_DIR}/zsh/.zshrc ${HOME}/.zshrc
	@echo "Done!"

.PHONY: git
git: config
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Building git configuration...\033[0m"
	@mkdir -p ${GIT_DIR}
	@ln -svf ${DOTFILES_DIR}/git/.gitconfig ${HOME}/.gitconfig
	@ln -svf ${DOTFILES_DIR}/git/.commit_template ${GIT_DIR}/.commit_template
	@ln -svf ${DOTFILES_DIR}/git/.gitignore_global ${GIT_DIR}/.gitignore_global
	@echo "Done!"

.PHONY: tmux
tmux:
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Building tmux configuration...\033[0m"
	@ln -svf ${DOTFILES_DIR}/tmux/.tmux.conf ${HOME}/.tmux.conf
	@git clone "${TPM_REPO_SRC}" "${TPM_LOCAL_REPO}" 2> /dev/null || git -C "${TPM_LOCAL_REPO}" pull
	@echo "Done!"

.PHONY: vim
vim:
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Building vim configuration...\033[0m"
	@ln -svf ${DOTFILES_DIR}/vim/.vimrc ${HOME}/.vimrc
	@echo "Done!"

.PHONY: nvim
nvim: config
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Building neovim configuration...\033[0m"
	@ln -svf ${DOTFILES_DIR}/nvim ${CONFIG_DIR}/
	@echo "Done!"

.PHONY: ideavim
ideavim:
	@echo "${SEPARATOR}"
	@echo "\033[36m==> Building ideavim configuration...\033[0m"
	@ln -svf ${DOTFILES_DIR}/ideavim/.ideavimrc ${HOME}/.ideavimrc
	@echo "Done!"

.PHONY: config
config:
	@mkdir -p ${CONFIG_DIR}
