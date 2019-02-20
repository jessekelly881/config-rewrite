source "$HOME/.config/zsh/utils.sh"

all="$(cat ~/.config/assets/configs.csv)"
name=$(echo "$all" | awk -F ',' '//{print $1}' | prompt_cli "Select Config File")
p=$(echo "$all" | grep "^$name," | awk -F ',' '//{gsub(/ /, "", $0); print $2}')
emacsclient -t "$p"
