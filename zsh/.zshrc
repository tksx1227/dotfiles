# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
#          _              
#  _______| |__  _ __ ___ 
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__ 
# /___|___/_| |_|_|  \___|
#                         

# Preload
autoload -Uz colors && colors

source ${ZDOTDIR}/functions.zsh

add_plugin "zsh-users/zsh-syntax-highlighting"
add_plugin "zsh-users/zsh-autosuggestions"
add_plugin "zsh-users/zsh-completions"

source ${ZDOTDIR}/path.zsh
source ${ZDOTDIR}/options.zsh
source ${ZDOTDIR}/prompt.zsh
source ${ZDOTDIR}/exports.zsh
source ${ZDOTDIR}/alias.zsh
source ${ZDOTDIR}/plugins.zsh

. "/opt/homebrew/opt/asdf/libexec/asdf.sh"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
