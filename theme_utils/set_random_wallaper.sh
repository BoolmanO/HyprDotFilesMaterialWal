#!/bin/bash

directory=~/theme_utils/wallapers
monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
    random_background=$(ls $directory/*.jpg | shuf -n 1)

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper "$monitor, $random_background"
    wal --cols16 --saturate 0.4 -i $random_background
    killall -SIGUSR2 waybar
fi
