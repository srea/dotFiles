# 個人設定ファイル置き場
    
    cd ~
    git clone git://github.com/srea/dotFiles.git
    ./setup.sh

* vim 7.2
* tmux
* screen
* bash
* zsh

## vim vundle
プラグインの管理はvundleを使っています。 

    git submodule add http://github.com/gmarik/vundle.git vimfiles/bundle/vundle
    git commit -m 'add_vundle'
    git push origin master
    設定は.vimrcを見る。

入れたいプラグイン名.vimrc.bundleに書いたら 
vimを開いて:BundleInstallで入る。

※鍵にパスフレーズが設定されていると:BundleInstallでエラーになる。 
└パスフレーズなしで鍵を作ってそれをgit用にする。

* サーバーにSSL通信が出来るソフトウェアを入れないと:BundleInstallでエラーになる。

    sudo yum install openssl*
    もしくは
    .gitconfig
    [http]
        sslVerify = false

