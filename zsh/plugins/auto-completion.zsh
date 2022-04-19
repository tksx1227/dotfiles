zstyle ":completion:*:commands" rehash 1
if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
	source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
	autoload -Uz compinit && compinit
fi
