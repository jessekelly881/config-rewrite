# Notify me with notify-send if my battery is below 25%.

[ "$(cat /sys/class/power_supply/BAT0/status)" = "Charging" ] && exit
[ "$(cat /sys/class/power_supply/BAT0/capacity)" -lt 25 ] && notify-send -u critical "Battery Critically Low."
