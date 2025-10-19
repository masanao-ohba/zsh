unalias cd 2>/dev/null

cd() {
  if [[ $# -eq 0 ]]; then
    builtin cd ~
  elif type __enhancd::cd &>/dev/null; then
    __enhancd::cd "$@"
  else
    builtin cd "$@"
  fi
}

# zoxide interactive widget for Ctrl+G
zi_widget() {
  zi
  zle reset-prompt
}

# Register widget and bind to Ctrl+G
zle -N zi_widget
bindkey '^G' zi_widget

