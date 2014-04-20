###Installation:###

####Clone the repo:####

```shell
git clone git@github.com:sudoExistencem/dotvim.git ~/.vim
```

####Make Vim load from `~/.vim/vimrc`:####

```shell
echo "runtime vimrc" > ~/.vimrc
```

####Switch to the `~/.vim` directory, and fetch submodules:####

```shell
cd ~/.vim
git submodule init
git submodule update
```
