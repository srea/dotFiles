# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

function s {
    ssh 192.168.$1
}

export EDITOR=vim
export SVN_EDITOR=vim

PATH=$PATH:/Users/tamazawayuuki/bin/sman

HISTSIZE=10000  
HISTFILESIZE=10000  
HISTCONTROL=ignoredups  # 同じコマンドの連続は記録しない 
export HISTSIZE HISTFILESIZE HISTCONTROL

#export LANG=ja_JP.eucJP
alias h='history 32'  
alias v='vim'  
alias vi='vim'  
alias cd..='cd ..;ll;pwd;'
alias ..='cd ..;ll;pwd;'
alias ...='cd ../../;ll;pwd;'
alias l='ls -lath '
alias ll='ls -lath '
alias t='tailf '
alias sl='ls'
alias sc='screen'
alias g='grep'
alias t='tailf'

#
alias rm='rm -i --preserve-root'
alias mv='mv -i'
alias cp='cp -i'

# dstat yum install dstat
alias dstat-full='dstat -Tclmdrn'
alias dstat-mem='dstat -Tclm'
alias dstat-cpu='dstat -Tclr'
alias dstat-net='dstat -Tclnd'
alias dstat-disk='dstat -Tcldr'
alias dstat='dstat -dcm'

complete -d cd # cd

# screen
# PS1='\033k\033\\[\u@\h \W]\$ ' #
