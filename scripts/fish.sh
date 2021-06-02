#!/bin/sh

###
# Installing fish shell
###

sudo pacman -S fish

###
# Setting fish as default shell
###

chsh -s `which fish`

###
# Installing spaceship
###

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

###
# Fish config file
###

mkdir -p $HOME/.config/fish
ln -s $PWD/.config/fish/config.fish $HOME/.config/fish/config.fish

