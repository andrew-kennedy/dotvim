###Installation:###

####Clone the repo:####

```shell
$ git clone git@github.com:sudoExistencem/dotvim.git ~/.vim
```

####Make Vim load from `~/.vim/vimrc`:####

```shell
$ echo "runtime vimrc" > ~/.vimrc
```

####Clone the Vundle repo:####

```shell
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```

####Install Plugins:####

Launch `vim` and run `:PluginInstall`

To install from command line: `vim +PluginInstall +qall`
