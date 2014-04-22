" =============================================================================
"       VUNDLE SETTINGS
" =============================================================================

" Configure Vundle.
set nocompatible              " be iMproved, required
filetype off                  " required

" Vim requires POSIX compliant shell
set shell=/bin/bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
" let path = '~/some/path/here'
" call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Vundle bundles
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

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

" =============================================================================
"       VIM SETTINGS
" =============================================================================

" Filetype detection, plugins, and indenting.
filetype plugin indent on

" Hybrid line numbers.
set relativenumber
set number

" Tabbing options.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"" 256 color terminal support
colorscheme xoria256
if &term =~ '256color'
    set t_Co=256
endif
set background=dark

" Syntax highlighting options.
syntax on
set synmaxcol=2048

" Highlight current line, but only in the active window.
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" Search/find options.
set wrapscan
set ignorecase
set smartcase
set hlsearch
set incsearch
set path=.,/usr/include/**,/usr/local/include/**

" Use forward slashes in paths regardless of the OS.
set shellslash

" Use the visual bell instead of beeping like crazy.
set visualbell

" Allow backspacing over indents, EOL, and the start of insert.
set backspace=indent,eol,start

" Let the cursor go to invalid places
" set virtualedit=all

" Allow hidden buffers so unsaved buffers can go in the background
set hidden

" Allow for more characters to be sent to the terminal for faster redraw
set ttyfast

" Use a $ to mark the end of a work when changing it.
set cpoptions=cesB$

" Status line options.
set laststatus=2
set statusline=\ %{fugitive#statusline()}\ %f\ %m\ %r%=%l/%L\ <%c>\ [%p%%]\ 

" Doesn't redraw during commands like macros that aren't typed (efficient)
set lazyredraw

" Show the command helper and current mode.
set showcmd
set showmode

" Multi-key macro timeout.
set timeoutlen=750

" Amount of history to keep around
set history=200

" Keep some context around where we're scrolling.
set scrolloff=5
set sidescrolloff=10

" Completion options.
set wildmenu
set complete=.,w,b,t,i
set showfulltag
set tags=./tags,tags

" Various line wrapping and line width settings.
set nowrap
if exists('+colorcolumn')
    set cc=80
endif

" Remove trailing whitespace on save of certain filetypes
autocmd FileType c,cpp,java,javascript,php,python,ruby,clojure,lisp
    \ autocmd BufWritePre <buffer> :%s/\s\+$//e

" =============================================================================
"       KEY MAPPINGS 
" =============================================================================

" Disable Arrow keys in normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Make typing commands not require pressing shift
map ; :
noremap ;; ;

" Toggle paste mode.
nmap <silent> ,p :set invpaste<CR>:set hls?<CR>

" Turn off highlight search.
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

" Toggle text wrapping. 
nmap <silent> ,w :set invwrap<CR>:set wrap?<CR>

" Maps to make handling windows a bit easier.
noremap <silent> ,h :wincmd h<CR>
noremap <silent> ,j :wincmd j<CR>
noremap <silent> ,k :wincmd k<CR>
noremap <silent> ,l :wincmd l<CR>
noremap <silent> ,sb :wincmd p<CR>
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize -10<CR>
noremap <silent> <C-F11> :resize +10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>

" Map CTRL-E to do what ',' used to do.
nnoremap <c-e> ,
vnoremap <c-e> ,

" Edit the vimrc file.
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Make horizontal scrolling easier.
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh

" Highlight all instances of the current word under the cursor.
nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>

" Search the current file for what's currently in the search register and 
" display matches.
nmap <silent> ,gs
     \ :vimgrep /<C-r>// %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the word under the cursor and display matches.
nmap <silent> ,gw
     \ :vimgrep /<C-r><C-w>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Search the current file for the WORD under the cursor and display matches.
nmap <silent> ,gW
     \ :vimgrep /<C-r><C-a>/ %<CR>:ccl<CR>:cwin<CR><C-W>J:set nohls<CR>

" Swap two words.
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='.
nmap <silent> ,ul :t.\|s/./=/g\|set nohls<CR>

" Delete all buffers.
"nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<CR>

" Map jj to escape in insert mode.
imap jj <ESC>
" =============================================================================
"       COLOR SCHEME SETTINGS
" =============================================================================

" Molokai settings
"let g:rehash256 = 1

" Solarized settings
"let g:solarized_termcolors=256
"let g:solarized_degrade=1
"let g:solarized_termtrans=1
" =============================================================================
"       NERD TREE SETTINGS
" =============================================================================

" Open/close NERD Tree with F2.
nmap <F2> :NERDTreeToggle<CR>
nmap <S-F2> :NERDTreeClose<CR>

" =============================================================================
"       EASY MOTION SETTINGS
" =============================================================================
" Rather than pollute the whole keyspace, use ,m as the trigger.
let g:EasyMotion_leader_key=',m'

" =============================================================================
"       CTRLP SETTINGS
" =============================================================================

" Run in mixed mode by default.
let g:ctrlp_cmd='CtrlPMixed'

" Put the cache directory in a tmps RAM disk.
" let g:ctrlp_cache_dir='/tmp/ctrlp-cache'

" =============================================================================
"       GITGUTTER TWEAKS
" =============================================================================

" Toggle line highlights with F4.
nmap <F4> :ToggleGitGutterLineHighlights<CR>

" =============================================================================
"       INDENTLINE SETTINGS
" =============================================================================

" Use soft gray color.
let g:indentLine_color_term = 238

" Make them a solid bar.
let g:indentLine_char = '│'

" =============================================================================
"       RUST SYNTAX SETTINGS
" =============================================================================

" Don't conceal arrows with fancy UTF-8 versions.
let g:no_rust_conceal = 2
