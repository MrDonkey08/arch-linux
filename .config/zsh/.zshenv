export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

export EDITOR="nvim"
export VISUAL="nvim"

export NVM_DIR="$HOME/.nvm"

GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export GEM_HOME
export PATH="$PATH:$GEM_HOME/bin"

. "$HOME/.cargo/env"
