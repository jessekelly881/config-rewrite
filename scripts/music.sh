set -e
source "$HOME/.config/zsh/utils.sh"

socket="/tmp/mpvsock"

p="$(prompt_dir_r '/home/jesse/media/music' 'Music')"
if pgrep -x "mpv" >> /dev/null
then
    pkill mpv
fi

mpv "$p" --no-audio-display --input-unix-socket=$socket
