umask 002
export SVN_EDITOR=vim

export LANG=ja_JP.UTF-8
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
 
# 補完機能の強化
autoload -U compinit
compinit
 
# プロンプトの設定
autoload colors
colors

# ビープを鳴らさない
setopt nobeep

# 補完候補を一覧表示
setopt auto_list
 
# 補完候補を詰めて表示
setopt list_packed
  
# 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
