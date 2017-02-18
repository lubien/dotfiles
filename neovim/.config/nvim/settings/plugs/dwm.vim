" " Prevent default mappings
" let g:dwm_map_keys=0

" " Open split in golden ratio
" nmap <C-N> <Plug>DWMNew

" " Theres a trick here: when I hit C-Space,
" " activate focus by dwm plugin then call
" " vim-eighties resize
" function! FocusWindow()
" 	execute "normal \<Plug>DWMFocus"
" 	execute 'EightiesResize'
" endfunction

" :nnoremap <Space> :call FocusWindow()<CR>
