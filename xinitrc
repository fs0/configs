xset m 1 1
numlockx &
xrdb -screen -display :0.0 -merge ~/.Xresources0
xrdb -screen -display :0.1 -merge ~/.Xresources1
nvidia-settings -l
echo "100,100" > .togglescreen.0
echo "100,100" > .togglescreen.1
scim -d

export DISPLAY=:0.1
nitrogen --restore
conky -c .conkyrc | while read -r; do xsetroot -name "$REPLY"; done &
exec /home/fs0/prg/prgs/dwm &

export DISPLAY=:0.0
nitrogen --restore
conky -c .conkyrc | while read -r; do xsetroot -name "$REPLY"; done &
exec /home/fs0/prg/prgs/dwm
