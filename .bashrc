#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

[ -f ~/.fzf.bash ] && source "$HOME/.fzf.bash"

if [ -f "$HOME/.profile" ]; then
	. "$HOME/.profile"
fi
