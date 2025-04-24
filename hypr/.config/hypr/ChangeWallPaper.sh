#!/bin/bash

directory=~/.config/wallpaper
ext=*.png

monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
    random_background=$(ls $directory/$ext | shuf -n 1)

    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload $random_background
    hyprctl hyprpaper wallpaper "$monitor, $random_background"

fi
