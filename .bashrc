# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export EDITOR=vim

PATH=$PATH

# コマンド履歴設定 
HISTSIZE=10000  
HISTFILESIZE=10000  
HISTCONTROL=ignoredups  # 同じコマンドの連続は記録しない 
export HISTSIZE HISTFILESIZE HISTCONTROL

# エイリアス設定
alias h='history 32'  
alias v='vim'  
alias vi='vim'  
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias l='ls -lat '
alias ll='ls -lat '
alias t='tailf '
alias sl='ls'
alias sc='screen'

complete -d cd # cdはディレクトリのみ表示

