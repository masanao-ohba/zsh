# Base
alias la='ls -al'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

# iBrew
alias ibrew='arch -x86_64 /usr/local/bin/brew'

# Git
alias -g gs='git status'
alias -g ga='git add'
alias -g gsw="git branch -a --sort=-committerdate --format '%(refname:short)|%(committeremail)|%(contents:subject)' | column -t -s \"|\" | fzf-tmux --nth=1 -p 90% | cut -d' ' -f1 | sed 's#origin/##' | xargs -r git checkout"
alias -g gc='git checkout'
alias -g gl='git log'
alias -g gf='git fetch'
alias -g gb='git branch'
alias -g lg='lazygit --use-config-dir ~/.config/lazygit'

alias -g rl='exec $SHELL -l'

# MicroServices
alias -g k='kubectl'
alias tf="terraform"
alias tg="terragrunt"

# Init Terminal colors
alias initc="tmux select-pane -P 'fg=default,bg=default'"

# My Shortcuts
alias jdate="date \"+%Y年%m月%d日 %H:%M:%S\""

alias -g nv="nvim"

