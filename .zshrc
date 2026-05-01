FPATH="${HOME}/.zsh:${FPATH}"
# submodules
[[ -d "${HOME}/.zsh/zshrc-git" ]] && FPATH="${HOME}/.zsh/zshrc-git:${FPATH}"

autoload -Uz colors && colors
autoload -U select-word-style

# Optional initialization modules. Some modules are intentionally absent on iSH.
autoload -Uz zshrc-base && zshrc-base

# 自分用にカスタマイズしたもので上書き
autoload -Uz zshrc-zplug-custom && zshrc-zplug-custom
# 上位ディレクトリのfzf表示を無効化
export ENHANCD_FILTER=
autoload -Uz zshrc-alias-custom && zshrc-alias-custom
autoload -Uz zshrc-python && zshrc-python
autoload -Uz zshrc-initialize && zshrc-initialize

# fzfのキーバインドと補完を読み込む
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Ctrl+G is now bound to zoxide zi command in zshrc-initialize when zoxide exists.

# Homebrew paths are macOS-specific and unavailable on iSH/Alpine.
if [[ "$(uname -s 2>/dev/null)" == "Darwin" && -d "/opt/homebrew/opt/mysql@8.4/bin" ]]; then
  export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
fi

# 単語区切りの定義 (単語単位の移動や文字削除に使用)
export WORDCHARS='*?_[]~=&;!#$%^(){}<>-'

# Ensure emacs mode and key bindings are set at the very end
bindkey -e
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

