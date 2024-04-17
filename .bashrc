#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

source /home/donkey/repos/alacritty/extra/completions/alacritty.bash

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
