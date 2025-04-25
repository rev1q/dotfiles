#
# Alias Settings
#
alias ll='ls -Alh'
alias cc='cd ~'
alias steam='flatpak run com.valvesoftware.Steam'

#
# Source Settings
#
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# History Settings
#
#HISTFILE=${HOME}/.zshrc_history
HISTFILE="$XDG_DATA_HOME/zsh/.zshrc_history"
HISTSIZE=1000
SAVEHIST=1000

#
# Auto command
# 
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1

#
# Prompt Settings
#
export ARROW_RIGHT=$'\ue0b0' # ▶
export ARROW_LEFT=$'\ue0b2' # ◀

left_prompt() {
	user="%F{17}%B%n%b%f"
	mark_1="%F{49}${ARROW_RIGHT}%f"
	dir="%F{227}%B%d%b%f"
	mark_2="%F{33}${ARROW_RIGHT}%f"
	echo "%B┌──%b %K{49} ${user} %k%K{33}${mark_1}%B ${dir} %b%k${mark_2}"
	echo "%B└─ %b"
}

PROMPT=$(left_prompt)

#right_prompt() {
#	echo "| %*"
#}

#RPROMPT=$(right_prompt)

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%b'
