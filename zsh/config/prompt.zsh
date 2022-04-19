# Base
local p_cdir="%F{080}%~%f"
local p_info="%F{082}%n%f %F{009}($(arch))%f"
local p_mark="%B%F{black}%(!,#,>)%f%b"

# Git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '(%r)-[%b]'
zstyle ':vcs_info:*' actionformats '(%r)-[%b|%a]'
precmd () {
	psvar=()
	LANG=en_US.UTF-8 vcs_info
	[[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
local p_vcs="%1(v|%F{082}%1v%F|)"

PROMPT="$p_info: $p_cdir $p_vcs"$'\n'"$p_mark "
