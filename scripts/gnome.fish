#!/usr/local/bin/fish

###
# Dependencies
###

set -l dependecies "python python-pip"

if sudo pacman -Qi $dependecies > /dev/null
  echo "Installing dependecies: $dependecies..."
  # sudo pacman -S $dependecies
end

###
# Wallpaper
###

if ! test -e $HOME/Pictures/Wallpapers/dracula.png
	set -l directory "$HOME/Pictures/Wallpapers"
	set -l wallpaper "https://raw.githubusercontent.com/dracula/wallpaper/master/base.png"

	mkdir -p $directory

	curl -o $directory/dracula.png $wallpaper
	gsettings set org.gnome.desktop.background picture-uri file:///$directory/dracula.png
end

###
# Paperwm
###

mkdir -p $HOME/Projects/paperwm
git clone --branch next-release git@github.com:paperwm/PaperWM.git $HOME/Projects/paperwm
