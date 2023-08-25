alias vi="nvim"
alias vim="nvim"
alias view="nvim -R"
alias l="ls"
alias ls="ls -FG"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"

# Macのデフォルトソフトを使用しない
if [ "$(uname)" = "Darwin" ]; then
    alias ctags=$(brew --prefix)/opt/ctags/bin/ctags
    alias git=$(brew --prefix)/opt/git/bin/git
    alias swift=$(brew --prefix)/opt/swift/bin/swift
fi
