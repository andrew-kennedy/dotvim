silent source ~/.vim/bundles.vim

" Filetype detection, plugins, and indenting.
filetype plugin indent on

let mapleader=","

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
if &term =~ '256color'
    set t_Co=256
endif
colorscheme molokai
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
set virtualedit=all

" Allow hidden buffers so unsaved buffers can go in the background
set hidden

" Allow for more characters to be sent to the terminal for faster redraw
set ttyfast

" Use a $ to mark the end of a work when changing it.
set cpoptions=cesB$

" Status line options.
set laststatus=2
"set statusline=\ %{fugitive#statusline()}\ %f\ %m\ %r%=%l/%L\ <%c>\ [%p%%]\

" Doesn't redraw during commands like macros that aren't typed (efficient)
set lazyredraw

" Show the command helper and current mode.
set showcmd
set showmode

" Multi-key macro timeout.
set timeoutlen=750

" Amount of history to keep around
set history=200

" for undotree stuff, put all undo info/files in one place
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

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
autocmd FileType c,cpp,java,javascript,php,python,ruby,clojure,lisp,vim
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
nnoremap<leader>p :set paste!<CR>

" Turn off highlight search.
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

" Toggle text wrapping.
"nmap <silent> ,w :set invwrap<CR>:set wrap?<CR>

" Maps to make handling windows a bit easier.
noremap <silent> <C-H> :wincmd h<CR>
noremap <silent> <C-J> :wincmd j<CR>
noremap <silent> <C-K> :wincmd k<CR>
noremap <silent> <C-L> :wincmd l<CR>
noremap <silent> <C-Q> :wincmd q<CR>
noremap <silent> ,sb :wincmd p<CR>
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize -10<CR>
noremap <silent> <C-F11> :resize +10<CR>
noremap <silent> <C-F12> :vertical resize +10<CR>

" Map CTRL-E to do what ',' used to do.
nnoremap <c-e> ,
vnoremap <c-e> ,

"to create a new line cmd mode without going to insert
nmap <leader>k O<esc>k0
nmap <leader>j o<esc>j0

" Edit the vimrc file.
nmap <silent> <Leader>vv :e ~/.vim/vimrc<CR>
nmap <silent> <Leader>sv :so ~/.vim/vimrc<CR>
nmap <silent> <Leader>eb :e ~/.vim/bundles.vim<CR>
nmap <silent> <Leader>ep :e ~/.vim/plugin_config.vim<CR>

" Make horizontal scrolling easier.
nmap <silent> <C-o> 10zl
nmap <silent> <C-i> 10zh

" Highlight all instances of the current word under the cursor.
"nmap <silent> ^ :setl hls<CR>:let @/="<C-r><C-w>"<CR>

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
nmap <silent> ,da :exec "1," . bufnr('$') . "bd"<CR>

" Map jj to escape in insert mode.
imap jj <ESC>

" Load plugin settings now
silent source ~/.vim/plugin_config.vim
