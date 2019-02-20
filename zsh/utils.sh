source "$HOME/.cache/wal/colors.sh"

#prompt $1:prompt text,
prompt () {
    dmenu -i -nb "$color0" -nf "$color1" -sb "$color1" -sf "$color0" -fn "Droid Sans Mono-6" -dim .4 -p "$1" $2
}

prompt_cli () {
    fzf --height 40% --color=bw --reverse --border --prompt "$@ > "
}

prompt_confirm (){
    echo "Yes\nNo" | prompt "$@"
}

input (){
    prompt "$1" -noinput
}

#Usage:  prompt_dir $1:path, $2:prompt
prompt_dir () {
    find -L "$1" -mindepth 1 -maxdepth 1 -type d -printf '%f\n' | sort | prompt "$2"
}

#Usage:  prompt_dir $1:path, $2:prompt
prompt_dir_r () {
    dirs=$(find -L "$1" -mindepth 1 -maxdepth 1 -type d -printf '%f\n')
    if [ "$dirs" = "" ]
    then
        echo "$1"
    else
        selected=$(echo "$dirs" | sort | prompt "$2")
        prompt_dir_r "$1/$selected" "$selected"
    fi
}

export prompt
export prompt_confirm
export prompt_dir
export prompt_dir_r
