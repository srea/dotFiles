# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

PATH=$PATH:/usr/local/php5/bin:/usr/local/apache/bin

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
alias t='tailf '
alias sl='ls'

complete -d cd
