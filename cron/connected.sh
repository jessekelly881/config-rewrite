repair (){
    notify-send -u critical "Wifi Down. Attempting Repair"
    nmcli networking off
    nmcli networking on
    sleep 5s
    ping -q -w 1 -c 1 `ip r | grep -m 1 default | cut -d ' ' -f 3` && notify-send "Wifi Repaired" || notify-send -u critical "Repair Failed. :("
}

ping -q -w 1 -c 1 `ip r | grep -m 1 default | cut -d ' ' -f 3` >/dev/null || repair
