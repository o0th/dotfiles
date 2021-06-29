# Disable welcome message
set -U fish_greeting

# Enable starship
starship init fish | source

fundle plugin 'FabioAntunes/fish-nvm'
fundle plugin 'edc/bass'
fundle init

set -U fish_user_paths /home/o0th/.local/bin $fish_user_paths
