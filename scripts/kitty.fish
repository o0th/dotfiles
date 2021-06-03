#!/usr/local/bin/fish

if ! sudo pacman -Qi kitty > /dev/null
	sudo pacman -S kitty
end

mkdir -p $HOME/.config/kitty

if ! test -L $HOME/.config/kitty/kitty.conf
	ln -s $PWD/.config/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
end

if ! test -f $HOME/.config/kitty/dracula.conf
  wget https://github.com/dracula/kitty/archive/master.zip
  unzip master.zip
  cp kitty-master/dracula.conf kitty-master/diff.conf $HOME/.config/kitty
  rm master.zip
  rm -Rfd kitty-master
end

