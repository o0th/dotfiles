# Disable welcome message
set -U fish_greeting

# Enable starship
starship init fish | source

# Plugins
fundle plugin 'FabioAntunes/fish-nvm'
fundle plugin 'edc/bass'
fundle init

#
# Aliases
#

alias ..='cd ..'

alias v='lvim'
alias cat='bat'
alias ls='exa --icons --time-style long-iso'

alias g='git'
alias gs='git status -u'

alias t='terraform'
alias ti='terraform init'
alias tp='terraform plan'
alias ta='terraform apply'

alias k='kubectl'


#
# Variables
#

set -x GH_PACKAGES_TOKEN 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

#
# Paths
#

set -U fish_user_paths /home/o0th/.local/bin $fish_user_paths
set -U fish_user_paths /home/o0th/.nvm/versions/node/(nvm current)/bin $fish_user_paths
set -U fish_user_paths /home/o0th/go/bin $fish_user_paths
