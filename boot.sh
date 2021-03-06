# graphical
python -m pywal -R &
xset r rate 200 40 #Keypress rate
setxkbmap -option caps:swapescape #ESC -> CAPS

source "$HOME/.cache/wal/colors.sh" #Source Color Scheme. Dunst.

dunst -lb "$color1" -nb "$color2" -hb "$color3" -lf "#000000" -mf "#000000" -bf "#000000" &
compton --respect-prop-shadow &
#redshift -b 1.0:0.3 &
urxvtd &
unclutter -idle 2 -jitter 10 -visible &

# general
emacs --daemon --no-window-system -fg "$color1" &
pulseaudio &
dropbox &
conky
