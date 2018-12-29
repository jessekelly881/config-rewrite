ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=true
ZSH_THEME="terminalparty"

export ZSH="/home/jesse/.config/zsh/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"
export EDITOR="emacsclient -t"

source /home/jesse/.config/zsh/aliases.sh


plugins=(
  git
  tmux
)
tmux
clear
