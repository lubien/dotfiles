setlocal tabstop=2
setlocal shiftwidth=2

" c.vim
let g:C_MapLeader  = ','

" Executes C files on F10
" To compile use the c.vim plugin (\rc)
:nnoremap <F10> :terminal './${%:r}'<CR>
