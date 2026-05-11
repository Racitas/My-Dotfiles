#!/usr/bin/env bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/.config/Wallpapers/"

# Get a list of image files in the directory
wallpapers=($(ls "$WALLPAPER_DIR" | grep -E '\.(jpg|jpeg|png|gif|webp)$'))

# Use rofi to select a wallpaper
selected=$(printf "%s\n" "${wallpapers[@]}" | rofi -dmenu -p "Select Wallpaper")

# If a wallpaper was selected, apply it
if [ -n "$selected" ]; then
  awww img "$WALLPAPER_DIR/$selected" --transition-type any --transition-fps 144
fi
