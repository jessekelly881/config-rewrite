set -e
source "$HOME/.config/zsh/utils.sh"

actions="Serve
Push To Surge"

dir=$(prompt_dir "$HOME/dev/projects/websites" "Website")
do=$(echo "$actions" | prompt "Do")
