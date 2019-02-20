set -e
source "$HOME/.config/zsh/utils.sh"

network=$(nmcli d wifi list | tail -n +2 | grep -v '*' | grep -v '-' | awk '//{print $1}' | prompt 'Connect To')
pass=$(input "Password")

nmcli d wifi connect "$network" password "$pass"
