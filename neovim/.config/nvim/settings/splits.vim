let g:dwm_map_keys=0

" DWM
" See: https://github.com/spolu/dwm.vim/blob/master/plugin/dwm.vim#L196-L224
nnoremap <C-z> <C-W>w
nnoremap <C-x> <C-W>W

if !hasmapto('<Plug>DWMNew')
    nmap <C-N> <Plug>DWMNew
endif
if !hasmapto('<Plug>DWMClose')
    nmap <C-C> <Plug>DWMClose
endif
if !hasmapto('<Plug>DWMFocus')
    nmap <C-Space> <Plug>DWMFocus
endif

" Move between terminal splits
:nnoremap <C-h> <C-\><C-n><C-w>h
:nnoremap <C-j> <C-\><C-n><C-w>j
:nnoremap <C-k> <C-\><C-n><C-w>k
:nnoremap <C-l> <C-\><C-n><C-w>l

