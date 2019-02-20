export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
export DISPLAY=:0

#Connected to Internet?
ping -q -w 1 -c 1 `ip r | grep -m 1 default | cut -d ' ' -f 3` >/dev/null || exit

notify-send "Checking for pacakge updates..."
yay -Syyuw --noconfirm || notify-send "Error downloading updates.

if yay -Qu | grep -v "\[ignored\]"
then
	notify-send "Package updates available."
else
	notify-send "Repository sync complete. No new packages for update."
