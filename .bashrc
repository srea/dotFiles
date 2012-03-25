# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export EDITOR=vim

PATH=$PATH

HISTSIZE=10000  
HISTFILESIZE=10000  
HISTCONTROL=ignoredups  
export HISTSIZE HISTFILESIZE HISTCONTROL

alias h='history 32'  
alias v='vim'  
alias vi='vim'  
alias ..='cd ..'
alias ...='cd ../../'
alias l='ls -lat '
alias ll='ls -lat '
alias t='tailf '
alias sl='ls'
alias sc='screen'

complete -d cd

