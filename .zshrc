# Android

path=(
    ~/Library/Android/sdk/platform-tools(N-/)
    $path
)

# Prezto

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# local

if [ -f ~/.zsh_local ]; then
  source ~/.zsh_local
fi

# peco history

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# peco snippets

function peco-snippets() {

    local SNIPPETS=$(grep -v "^#" ~/.snippets | peco --query "$LBUFFER" | pbcopy)
    zle clear-screen
}

zle -N peco-snippets
bindkey '^x^s' peco-snippets

# tmux

## at once
if [ $SHLVL = 1 ]; then
  tmux
fi

# ruby

eval "$(rbenv init -)"

# zsh config

autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# github

eval "$(hub alias -s)"

# git
alias -g br='`git branch -a | grep -v "remotes" | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g" | xargs git checkout`'   

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# xcode

alias openx='`open $(find . -name "*.xcworkspace" -depth 1 -print -quit)`'

# debug

function urlencode {
  echo "$1" | nkf -WwMQ | sed 's/=$//g' | tr = % | tr -d '\n'
}
