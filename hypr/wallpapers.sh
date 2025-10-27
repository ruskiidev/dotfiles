#!/bin/bash
#

WALLPAPER_DIR=~/.config/wallpapers

WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

sleep 1

hyprctl hyprpaper unload unused
