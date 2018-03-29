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

[[ -z "$TMUX" && ! -z "$PS1" ]] && exec tmux a -t root