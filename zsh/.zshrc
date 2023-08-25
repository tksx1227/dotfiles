# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
#                         

# Preload
autoload -Uz colors && colors

if [ -n ${DOTFILES_DIR} ]; then
    DOTFILES_DIR=$HOME/dotfiles
fi

source $DOTFILES_DIR/zsh/config/path.zsh
source $DOTFILES_DIR/zsh/config/options.zsh
source $DOTFILES_DIR/zsh/config/prompt.zsh
source $DOTFILES_DIR/zsh/config/exports.zsh
source $DOTFILES_DIR/zsh/config/alias.zsh
source $DOTFILES_DIR/zsh/plugins/auto-completion.zsh

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"

. "/opt/homebrew/opt/asdf/libexec/asdf.sh"
