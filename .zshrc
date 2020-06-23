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

# prompt

autoload -Uz promptinit
promptinit
prompt steeef

# peco history

function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection

# peco snippets

function peco-select-snippet() {
  BUFFER=$(cat ~/.snippets | peco)
  CURSOR=$#BUFFER
  zle -R -c
}
zle -N peco-select-snippet
bindkey '^f^e' peco-select-snippet

# tmux

## at once
if [ $SHLVL = 1 ]; then
  tmux a -t main || tmux new -s main
fi

# zsh config

autoload -U compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt hist_expand
setopt share_history


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
export PATH="/usr/local/opt/opencv@3/bin:$PATH"

# anyenv
# https://github.com/anyenv/anyenv
eval "$(anyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yukitamazawa/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yukitamazawa/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yukitamazawa/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yukitamazawa/google-cloud-sdk/completion.zsh.inc'; fi
