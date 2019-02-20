source "$HOME/.config/zsh/utils.sh"

drives="$(lsblk -lp | grep "part \$" | grep -v sda | awk '{print $1, "(", $4, ")"}')"
drive_to_mount="$(echo "$drives" | prompt_cli 'Select Drive To Mount' | awk '//{print $1}' )"

mount_point="$(echo '/mnt/usb
/mnt/sd
' | prompt_cli "Select Mount Point")"

sudo mount "$drive_to_mount" "$mount_point"
