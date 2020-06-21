#!/bin/sh
feh --bg-scale ~/.linux_config/wallpapers/iss_wallpaper.jpg &
picom -b --config ~/.config/picom/picom.conf &
pulseaudio --start &
pactl set-sink-volume 0 25% &
