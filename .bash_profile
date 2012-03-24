# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# screen$B<+F05/F0(B
#if [ $TERM != "screen" ]; then
#     exec screen -S main -xRR
#fi

# tmux$B<+F05/F0(B
#if [ $TERM != "tmux" ]; then
#     exec tmux
#fi


# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/sbin:/usr/sbin
# alias
alias vi='vim'
alias ..='cd ..'
export PATH
