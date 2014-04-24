" =============================================================================
"       VUNDLE SETTINGS
" =============================================================================

" Configure Vundle.
set nocompatible              " be iMproved, required
filetype off                  " required

" Vim requires POSIX compliant shell
if &shell =~# 'fish$'
    set shell=/bin/bash
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
" let path = '~/some/path/here'
" call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Vundle bundles
"Plugin 'tpope/vim-sensible'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/tabman.vim'
"Plugin 'kien/rainbow_parentheses.vim'
Plugin 'luochen1990/rainbow'
"Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'mbbill/undotree'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-sleuth'

" Ultisnips engine is the first plugin, snippets are separate
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Vundle Colorschemes
Plugin 'tomasr/molokai'
Plugin 'xoria256.vim'
Plugin 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jellybeans.vim'

" =============================================================================
"       EXAMPLE VUNDLE PLUGINS FOR REFERENCE
" =============================================================================

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" scripts not on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
