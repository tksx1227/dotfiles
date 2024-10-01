# Base
local p_success_logo="%F{189}%f"
local p_fail_logo="%F{198}%f"
local p_info="%F{147}%n%f"
local p_cdir="%F{117}%~%f"
local p_mark="%B%F{248}❯%f%b"
local p_time="%F{103}%D %T%f"

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
local p_vcs="%1(v|%F{183}%1v%F|)"

PROMPT="%(?.$p_success_logo.$p_fail_logo) $p_info: $p_cdir $p_vcs"$'\n'"$p_mark "
RPROMPT="$p_time"
