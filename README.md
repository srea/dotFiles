# dotfile環境設定
    
    cd ~ && git clone git://github.com/srea/dotFiles.git && cd dotFiles
    git submodule add http://github.com/gmarik/vundle.git vimfiles/bundle/vundle
    ./setup.sh

# 主に使ってるもの

* vim 7.2
* tmux
* screen
* bash
* zsh

# その他

プラグインの管理はvundleを使っています。   
    
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

