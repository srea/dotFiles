# dependency

- xcode command line tools
- install brew https://brew.sh/ja/
- github ssh (copy old mac .ssh )
- tools `brew install zsh zsh-completions peco tmux hub wget nmap bat reattach-to-user-namespace awscli`
- asdf `git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0`
- https://github.com/sorin-ionescu/prezto (theme: steeef)

# setup

```
$ mkdir -p  ~/src/github.com/srea/
$ git clone git://github.com/srea/dotFiles.git
$ cd dotFiles
$ sh ./setup.sh
```

# asdf

.zshrc
```
. "$HOME/.asdf/asdf.sh"
```

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf install nodejs latest
```
