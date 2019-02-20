set -e
source "$HOME/.config/zsh/utils.sh"

input "Note" >> "$HOME/docs/notes.org"
notify-send "Note Saved."
