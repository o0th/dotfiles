#!/bin/sh

###
# Update system
###

sudo pacman -Syu

###
# Use local time
###

timedatectl set-local-rtc 1 --adjust-system-clock

###
# Create .config dir
###

mkdir -p $HOME/.config

###
# Install Hasklig
###

if [ ! -f $HOME/.local/share/fonts/Hasklig-Regular.otf ]; then
  mkdir -p $HOME/.local/share/fonts

  wget https://github.com/i-tu/Hasklig/releases/download/1.1/Hasklig-1.1.zip
  unzip Hasklig-1.1.zip -d $HOME/.local/share/fonts
  rm Hasklig-1.1.zip
fi

###
# Install fish
###

if ! sudo pacman -Qi fish > /dev/null; then
	echo "installing fish..."
	sudo pacman -S fish
fi

if [ $SHELL != "/bin/fish" ]; then
	chsh -s `which fish`
fi

if [ ! -L $HOME/.config/fish/config.fish ]; then
	echo "setting fish config file..."
	mkdir -p $HOME/.config/fish
	ln -s $PWD/.config/fish/config.fish $HOME/.config/fish/config.fish
fi

###
# Install starship
###

if ! sudo pacman -Qi starship > /dev/null; then
	echo "installing starship..."
	sudo pacman -S starship
fi

if [ ! -L $HOME/.config/starship.toml ]; then
	echo "setting starship config file..."
	ln -s $PWD/.config/starship.toml $HOME/.config/starship.toml
fi

