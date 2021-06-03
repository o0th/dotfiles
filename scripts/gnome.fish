#!/usr/local/bin/fish

###
# Enable gnome shell user themes
###

if sudo pacman -Qi python python-pip > /dev/null
  sudo pacman -S python python-pip
  pip install gnome-extensions-cli
  $HOME/.local/bin/gnome-extensions-cli enable user-theme@gnome-shell-extensions.gcampax.github.com
end

###
# Dracula theme, shell, gtk and icons
###

if ! test -d $HOME/.themes
  mkdir -p $HOME/.themes
end

if ! test -d $HOME/.themes/dracula
  wget https://github.com/dracula/gtk/archive/master.zip
  unzip master.zip
  mv gtk-master dracula
  mv dracula $HOME/.themes
  rm master.zip
end

gsettings set org.gnome.shell.extensions.user-theme dracula
gsettings set org.gnome.desktop.interface gtk-theme dracula

if ! test -d $HOME/.icons
  mkdir -p $HOME/.icons
end

if ! test -d $HOME/.icons/Dracula
  wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
  unzip Dracula.zip
  mv Dracula dracula
  mv dracula $HOME/.icons
  rm Dracula.zip
end

gsettings set org.gnome.desktop.interface icon-theme dracula

###
# Wallpaper
###

if ! test -e $HOME/Pictures/Wallpapers/dracula.png
	mkdir -p $HOME/Pictures/Wallpapers
	curl -o $HOME/Pictures/Wallpapers/dracula.png https://raw.githubusercontent.com/dracula/wallpaper/master/base.png
	gsettings set org.gnome.desktop.background picture-uri file:///$HOME/Pictures/Wallpapers/dracula.png
end

