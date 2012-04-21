# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export EDITOR=vim
export SVN_EDITOR=vim

PATH=$PATH

# $B%3%^%s%IMzNr@_Dj(B 
HISTSIZE=10000  
HISTFILESIZE=10000  
HISTCONTROL=ignoredups  # $BF1$8%3%^%s%I$NO"B3$O5-O?$7$J$$(B 
export HISTSIZE HISTFILESIZE HISTCONTROL

# $B%(%$%j%"%9@_Dj(B
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

# $B4m81KI;_(B
alias rm='rm -i --preserve-root'
alias mv='mv -i'
alias cp='cp -i'

# dstat$BMQ(B yum install dstat
alias dstat-full='dstat -Tclmdrn'
alias dstat-mem='dstat -Tclm'
alias dstat-cpu='dstat -Tclr'
alias dstat-net='dstat -Tclnd'
alias dstat-disk='dstat -Tcldr'
alias dstat='dstat -dcm'

complete -d cd # cd$B$O%G%#%l%/%H%j$N$_I=<((B

# screen$BMQ(B
PS1='\033k\033\\[\u@\h \W]\$ ' # $BBG$C$?%3%^%s%I$r%?%$%H%k$K$9$k(B
