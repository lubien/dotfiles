" Run Neomake when enter buffer and when saving it
autocmd! BufWritePost,BufEnter * Neomake

" +-+-+-+
" |V|u|e|
" +-+-+-+
let s:eslint_path = system('npm-which eslint')

let g:neomake_vue_eslint_maker = {
	\ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
	\ '%W%f: line %l\, col %c\, Warning - %m',
	\ 'args': ['--format', 'compact']
	\ }

let g:neomake_vue_enabled_makers = ['eslint']
