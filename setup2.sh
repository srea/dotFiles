#/bin/sh
set -e
set -u

echo "dotfiles ok ? [y/n]"
read ANS

if [ $ANS = 'y' -o $ANS = 'yes' ] ; then
    
    { # vimrc
        echo "se nu nowrap ts=4 sw=4 enc=utf-8 fenc=utf-8 tenc=euc-jp fencs=iso-2022-jp,euc-jp,utf-8,shift-jis,ucs2le,ucs-2 "
        echo "colorscheme desert"
    } >> $HOME/.vimrc

    { # bashrc
        echo "PS1='\033k\033\\[\u@\h \W]\$ "
    } >> $HOME/.bashrc

    { # screenrc
        echo "defutf8 on"
        echo "defencoding euc-jp" 
        echo "encoding euc-jp euc-jp"
        echo "startup_message off"
        echo "autodetach on"
        echo "vbell off"
        echo "escape ^t^t"
        echo "shelltitle \"$ |bash\""
        echo "hardstatus on"
        echo "caption always \"%{= Wk} %?%F%{b Kw}%? %?%h%:%t (screen #%n)%? %{-}\""
        echo "hardstatus alwayslastline \"%{= kw} %-Lw%40L>%{b kg} %n %t %{-}%+Lw%-040=%{b kY} %l %{.c} %Y/%m/%d %C:%s %A \""
        echo "defbce \"on\""
        echo "attrcolor b \"^[\""
        echo "term xterm-256color"
        echo "defscrollback 10000"
        echo "altscreen on"
        echo "autodetach on"
    } >> $HOME/.screenrc
fi

exit 0;
