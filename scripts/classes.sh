source "$HOME/.config/zsh/utils.sh"

p=~/docs/classes
doc=$(ls $p | prompt_cli "Select Document")
emacsclient -t "$p/$doc"
