# .bash_profile

# mac setting
export PATH=$PATH:/Applications/android-sdk-mac_x86/tools
export PATH=$PATH:/Applications/android-sdk-mac_x86/platform-tools
export PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH
##
# Your previous /Users/tamazawayuuki/.bash_profile file was backed up as /Users/tamazawayuuki/.bash_profile.macports-saved_2012-03-08_at_22:28:23
##

# MacPorts Installer addition on 2012-03-08_at_22:28:23: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH="/Applications/MAMP/bin/php/php5.3.6/bin:$PATH"

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# screen自動起動
#if [ $TERM != "screen" ]; then
#     exec screen -S main -xRR
#fi

# tmux自動起動
if [ $TERM != "tmux" ]; then
     tmux a -t test
fi


# User specific environment and startup programs

PATH=$PATH:$HOME/bin:/sbin:/usr/sbin
# alias
alias vi='vim'
alias ..='cd ..'
export PATH

export PATH="/usr/local/narwhal/bin:$PATH"

export CAPP_BUILD="/Users/tamazawayuuki/Downloads/Starter/Build"
