set -e
source "$HOME/.config/zsh/utils.sh"

#commands
pause='{ "command" : ["set_property", "pause", true] }'
unpause='{ "command" : ["set_property", "pause", false] }'
next="playlist-next"
prev="playlist-prev"

command=$(echo "Pause
Unpause
Next
Previous
Kill" | prompt "MPV Send Command")

case "$command" in
    Pause) echo "$pause" | socat - /tmp/mpvsock ;;
    Unpause) echo "$unpause" | socat - /tmp/mpvsock ;;
    Next) echo "$next" | socat - /tmp/mpvsock ;;
    Previous) echo "$prev" | socat - /tmp/mpvsock ;;
    Kill) pkill mpv;;
    *) exit
esac
