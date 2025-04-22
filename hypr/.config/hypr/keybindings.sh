#!/bin/bash

BACKEND=wayland

if pgrep -x "rofi" > /dev/null; then
    pkill rofi
fi

x_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .width')
y_mon=$(hyprctl -j monitors | jq '.[] | select(.focused==true) | .height')
hypr_scale=$(hyprctl -j monitors | jq '.[] | select (.focused == true) | .scale' | sed 's/\.//')

width=$((x_mon * hypr_scale / 230))
height=$((y_mon * hypr_scale / 100))

max_width=800
max_height=600

percentage_width=70
percentage_height=70

dynamic_width=$((width * percentage_width / 100))
dynamic_height=$((height * percentage_height / 100))

dynamic_width=$(($dynamic_width > $max_width ? $max_width : $dynamic_width))
dynamic_height=$(($dynamic_height > $max_height ? $max_height : $dynamic_height))

GDK_BACKEND=$BACKEND yad --width=$dynamic_width --height=$dynamic_height \
    --center \
    --title="Keybindings" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --timeout-indicator=bottom \
" + K" "Show all KeyBindings" \
" + Enter" "Terminal" \
" + Q" "Kills Active Window" \
" + M" "Exit" \
" + E" "File Manager" \
" + F" "FullScreen" \
" + Shift + F" "Toggle Floating" \
" + A" "App Menu" \
" + P" "Dwindle" \
" + J" "Toggle Split windows" \
" + V" "Clipboard History" \
" + Shift + V" "Clear Clipboard History" \
"Ctrl + Alt + P" "Logout Menu" \
" + L" "Lock Screen" \
" + Alt + E" "Emoji" \
" + Alt + X" "Kill App" \
" + Print" "Take Full Screenshot" \
" + Shift + Print" "Screenshot selected Area" \
" + Ctrl + Print" "Screenshot in 5secs" \
" + Ctrl + Shift + Print" "Screenshot in 10secs" \
"Alt + Print" "Active window screenshot" \
" + left_mouse" "move window" \
" + right_mouse" "resize window" \
" + left arrow" "move focus to left window" \
" + right arrow" "move focus to right arrow" \
" + up arrow" "move focus to upper window" \
" + down arrow" "move focus to lower window" \
" + 1 or 2 or..." "go to that workspace" \
" + mouse_down" "next workspace" \
" + mouse_up" "previous workspace" \
" + Shift + 1 or 2 or..." "Moves active window to that workspace" \
" + S" "Toggles Special Workspace" \
" + Shift + S" "Moves active window to special workspace" \

