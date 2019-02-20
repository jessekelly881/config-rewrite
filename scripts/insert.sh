set -e
source "$HOME/.config/zsh/utils.sh"

sel=$(cat ~/.config/assets/insert.csv | prompt "Select Text")
echo "$sel" | xsel -ib
notify-send "Copied to Clipboard: $sel"
