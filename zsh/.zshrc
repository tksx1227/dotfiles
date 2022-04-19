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

SCRIPT_DIR=$HOME/dotfiles/zsh

source $SCRIPT_DIR/config/path.zsh
source $SCRIPT_DIR/config/options.zsh
source $SCRIPT_DIR/config/prompt.zsh
source $SCRIPT_DIR/config/exports.zsh
source $SCRIPT_DIR/config/alias.zsh
source $SCRIPT_DIR/plugins/auto-completion.zsh

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"
