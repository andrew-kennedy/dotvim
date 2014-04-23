 " =============================================================================
"       COLOR SCHEME SETTINGS
" =============================================================================

" Molokai settings
let g:rehash256 = 1

" Solarized settings
"let g:solarized_termcolors=256
"let g:solarized_degrade=1
"let g:solarized_termtrans=1
" =============================================================================
"       NERD TREE SETTINGS
" =============================================================================

" Open/close NERD Tree with F2.
"autocmd vimenter * if !argc() | NERDTree | endif
"nmap <F2> :NERDTreeToggle<CR>
"nmap <S-F2> :NERDTreeClose<CR>

" =============================================================================
"       EASY MOTION SETTINGS
" =============================================================================
" Rather than pollute the whole keyspace, use ,m as the trigger.
"let g:EasyMotion_leader_key=',m'

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
nmap <F4> :GitGutterLineHighlightsToggle<CR>

" =============================================================================
"       INDENTLINE SETTINGS
" =============================================================================

" Use soft gray color.
let g:indentLine_color_term = 238

" Make them a solid bar.
let g:indentLine_char = '│'
" =============================================================================
"       RAINBOW PAREN SETTINGS
" =============================================================================

let g:rainbow_active = 1

"" =============================================================================
"       AIRLINE SETTINGS
" =============================================================================

let g:airline_theme = 'molokai'
let g:airline_enable_branch = 1
let g:airline_enable_syntastic = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" =============================================================================
"       RUST SYNTAX SETTINGS
" =============================================================================

" Don't conceal arrows with fancy UTF-8 versions.
let g:no_rust_conceal = 2
