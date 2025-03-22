#
# Alias Settings
#
alias ll='ls -Alh'
alias cc='cd ~'

#
# Source Settings
#
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#
# History Settings
#
HISTFILE=${HOME}/.zshrc_history
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

right_prompt() {
	echo "| %*"
}

PROMPT=$(left_prompt)
RPROMPT=$(right_prompt)
