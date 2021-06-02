#!/usr/local/bin/fish

set -l directory "$HOME/Pictures/Wallpapers"
set -l wallpaper "https://raw.githubusercontent.com/dracula/wallpaper/master/base.png"

mkdir -p $directory

curl -o $directory/wallpaper.png $wallpaper
gsettings set org.gnome.desktop.background picture-uri file:///$directory/wallpaper.png

