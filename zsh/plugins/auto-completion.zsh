# zstyle ":completion:*:commands" rehash 1
# if type brew &>/dev/null; then
# 	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
# 	source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# 	autoload -Uz compinit && compinit
# fi

## 補完で小文字でも大文字にマッチさせる
# コマンド補完
autoload -Uz compinit && compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1 
