set -e
source "$HOME/.config/zsh/utils.sh"

bookmarks=$(cat ~/.config/assets/bookmarks.csv)
selected=$(echo "$bookmarks" | awk -F ',' '//{print $1}' | prompt "Browse")
url=$(echo "$bookmarks" | grep "$selected" | awk -F ',' '//{print $2}')
notify-send "Opening: $url"
qutebrowser $url
