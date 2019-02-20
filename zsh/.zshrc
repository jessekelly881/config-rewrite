ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=true
ZSH_THEME="terminalparty"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

export ZSH="/home/jesse/.config/zsh/oh-my-zsh"
source "$ZSH/oh-my-zsh.sh"
export EDITOR="emacsclient -t"

source /home/jesse/.config/zsh/aliases.sh


plugins=(
  git
  tmux
  #globalias
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-syntax-highlighting
)
