"let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = 'eslint'
let g:neomake_javascript_eslint_args= ['--format=compact']
autocmd! BufWritePost,BufEnter * Neomake

set updatetime=250

