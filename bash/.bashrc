# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
set -h
source /usr/share/nvm/init-nvm.sh
export SSH_AUTH_SOCK=/home/cz/.bitwarden-ssh-agent.sock
# export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
