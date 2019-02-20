set -e
source "$HOME/.config/zsh/utils.sh"

action=$(echo 'Connect
Disconnect
Info' | prompt "Bluetooth")

devices=$(echo "devices" | bluetoothctl | awk '/Device/{s = ""; for (i = 3; i <= NF; i++) s = s $i " "; print s}')
device=$(echo $devices | prompt "Bluetooth Devices")
