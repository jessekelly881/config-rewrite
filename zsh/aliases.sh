alias c="clear"
alias t="touch"
alias e="$EDITOR"
alias ed="emacs --daemon"
alias g="git"
alias gi="git init"
alias ga="git add"
alias gs="git status"
alias r="ranger"
alias o="rifle" #Open
alias s="sudo"
alias h='history'
alias hs='history | grep'
alias k="pkill"
alias y="yay"
alias yi="yay -S"
alias q="exit"
alias Q="echo \"Shutting Down..\"; sudo -k shutdown now"

#paths
alias home="cd $USER_HOME"
alias conf="cd $CONFIG"
alias docs="cd $DOCS"

#frequent commands
alias hs='history | grep '
alias note="$EDITOR $DOCS/notes/$(date +'%F').org"

#edit
alias Ea="$EDITOR $CONFIG/zsh/aliases.sh" #Edit Aliases
alias E3="$EDITOR ~/Dropbox/env/i3/config"
alias Ez="$EDITOR $CONFIG/zsh/zshrc.sh" #Edit zsh config
alias Es="$EDITOR /etc/ssh/sshd_config" #SSH Config
alias Ei="$EDITOR $HOME/Dropbox/env/scripts/boot.sh"
#Et: tmux
#Ee: emacs. Eeb:bindings, Eep:packages, etc.
#Er: ranger
#ER: rifle

#Ec: Edit clipboard in editor.
alias Ec="xclip -i -selection clipboard -o >> /tmp/clipEdit; $EDITOR /tmp/clipEdit; cat /tmp/clipEdit | xclip -selection clipboard"

#start
alias Sp="cd ~; polybar bar -r &" #Start polybar

#create
alias Cpass="openssl rand -base64 20"
alias Clabel="figlet"

#web stuff
alias serve="python -m SimpleHTTPServer 8000"
alias ipg="curl ipinfo.io/ip"
alias ipl="ifconfig | awk '$1 == \"inet\" {print $2}'"
alias up="ping 8.8.8.8"

# grc - better colors
if [[ -x `which grc` ]]; then
	  alias grc='grc --colour=auto'
	  alias ping='grc ping -c 3'
	  alias last='grc last'
	  alias netstat='grc netstat'
	  alias traceroute='grc traceroute'
	  alias diff='grc diff'
	  alias gcc='grc gcc'
	  alias configure='grc configure'
	  alias cvs='grc cvs'
	  alias gcc='grc gcc'
	  alias configure='grc ./configure'
	  alias cat="grc cat"
fi

#programs
alias email="neomutt"
alias calander="calcurse"
alias alarm=". ~/Dropbox/env/scripts/alarm.sh"
