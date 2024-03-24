# asdf

. "$HOME/.asdf/asdf.sh"

# Android & Android Java

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin

export PATH=$PATH:/Applications/Android\ Studio.app/Contents/jbr/Contents/Home/bin
export JAVA_HOME=$PATH:/Applications/Android\ Studio.app/Contents/jbr/Contents/Home

# Prezto

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# local

if [ -f $HOME/.zsh_local ]; then
  source $HOME/.zsh_local
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
  BUFFER=$(cat $HOME/.snippets | peco)
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

HISTFILE=$HOME/.zsh_history
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

# flutter

export PATH="$PATH:$HOME/src/dev/flutter/bin"

