" W.I.P.

" Theres a trick here: when I hit C-Space,
" activate focus by dwm plugin then call
" vim-eighties resize
"nmap <C-Space> :<Plug>DWMFocus<CR>
function! FocusWindow()
	execute "<Plug>DWMFocus"
	"execute 'EightiesResize'
endfunction

:nnoremap <C-Space> :call FocusWindow()<CR>

