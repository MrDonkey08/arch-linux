# Cats
alias cat='bat --color=always'
alias icat="kitty +kitten icat"

# File listings
alias l='lsd --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias ll='lsd -lh --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# Git
alias gitsafe="find . -name '.git' -type d -exec bash -c 'git config --global --add safe.directory ${0%/.git}' {} \;"
alias gitclean="find . -type d -name ".git" -execdir git clean -dfx \;"
