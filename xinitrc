nitrogen --restore
xset m 1 1
numlockx &
xrdb -screen -display :0.0 -merge ~/.Xresources0
xrdb -screen -display :0.1 -merge ~/.Xresources1

export DISPLAY=:0.1
conky -c .conkyrc | while read -r; do xsetroot -name "$REPLY"; done &
exec /home/fs0/prg/prgs/dwm &

export DISPLAY=:0.0
conky -c .conkyrc | while read -r; do xsetroot -name "$REPLY"; done &
exec /home/fs0/prg/prgs/dwm
