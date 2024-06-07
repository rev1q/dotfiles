left_prompt() {
	user="%F{17}%B%n%b%f"
	mark_1="%F{49}%f"
	dir="%F{227}%B%d%b%f"
	mark_2="%F{33}%f"
	echo "%K{49} ${user} %k%K{33}${mark_1}%B ${dir} %b%k${mark_2}"
	echo " %F{33}%B➔ %b%f"
}

right_prompt() {
	echo "| %*"
}

PROMPT=$(left_prompt)
RPROMPT=$(right_prompt)
