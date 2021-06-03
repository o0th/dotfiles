#!/bin/sh

###
# Installing fish shell
###

pacman -S fish

###
# Setting fish as default shell
###

chsh -s `which fish`

###
# Installing spaceship
###

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

###
# Creating fish config file symlink
###

mkdir -p $HOME/.config/fish
ln -s $PWD/../.config/fish/config.fish $HOME/.config/fish/config.fish

###
# Creating starship config file symlink
###

ln -s $PWD/../.config/startship.toml $HOME/.config/starship.toml

