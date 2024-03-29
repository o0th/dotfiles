export ZSH="/home/o0th/.oh-my-zsh"

ZSH_THEME="spaceship"

plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/o0th/.local/bin

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -s /home/o0th/.rsvm/rsvm.sh ]] && . /home/o0th/.rsvm/rsvm.sh # This loads RSVM
