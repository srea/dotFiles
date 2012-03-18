# 設定ファイル置き場
vimrc
bashrc
など置いておきます















## vim vundle

git submodule add http://github.com/gmarik/vundle.git vimfiles/bundle/vundle
git commit -m 'add_vundle'
git push origin master
設定は.vimrcを見る。

入れたいプラグイン名.vimrcに書いたら
vimで:BundleInstallで入る。

鍵にパスフレーズが設定されていると:BundleInstallでエラーになる。
└パスフレーズなしで鍵を作ってそれをgit用にする。

サーバーにSSL通信が出来るソフトウェアを入れないと:BundleInstallでエラーになる。
sudo yum install openssl*
もしくは
.gitconfig
[http]
  sslVerify = false

