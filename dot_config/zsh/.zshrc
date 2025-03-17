# Alias Settings
alias ll='ls -Alh'
alias cc='cd ~'

# Prompt Settings
left_prompt() {
	user="%F{17}%B%n%b%f"
	mark_0="%F{0}%f"
	mark_1="%F{49}%f"
	dir="%F{227}%B%d%b%f"
	mark_2="%F{33}%f"
	echo "%B┌──%b %K{49}${mark_0} ${user} %k%K{33}${mark_1}%B ${dir} %b%k${mark_2}"
	echo "%B└─ %b"
}

right_prompt() {
	echo "| %*"
}

PROMPT=$(left_prompt)
RPROMPT=$(right_prompt)

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
