# Prezto

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# local

if [ -f ~/.zsh_local ]; then
  source ~/.zsh_local
fi

# peco ctrl+r

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# tmux

## at once
if [ $SHLVL = 1 ]; then
  tmux
fi

# ruby

eval "$(rbenv init -)"
