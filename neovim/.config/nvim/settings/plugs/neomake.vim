" Run Neomake when enter buffer and when saving it
" autocmd! BufWritePost,BufEnter * Neomake

" Run Neomake when I save any buffer
augroup localneomake
	autocmd! BufWritePost * Neomake
augroup END

" Don't tell me to use smartquotes in markdown ok?
let g:neomake_markdown_enabled_makers = []

" +-+-+-+
" |V|u|e|
" +-+-+-+
let s:eslint_path = system('npm-which eslint')

let g:neomake_vue_eslint_maker = {
	\ 'exe': substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', ''),
	\ 'errorformat': '%E%f: line %l\, col %c\, Error - %m,' .
	\ '%W%f: line %l\, col %c\, Warning - %m',
	\ 'args': ['--format', 'compact']
	\ }

let g:neomake_vue_enabled_makers = ['eslint']

let g:neomake_elixir_enabled_makers = ['mix', 'credo']

" Configure a nice credo setup, courtesy https://github.com/neomake/neomake/pull/300
" let g:neomake_elixir_enabled_makers = ['mycredo']
" function! NeomakeCredoErrorType(entry)
" 	if a:entry.type ==# 'F'      " Refactoring opportunities
" 		let l:type = 'W'
" 	elseif a:entry.type ==# 'D'  " Software design suggestions
" 		let l:type = 'I'
" 	elseif a:entry.type ==# 'W'  " Warnings
" 		let l:type = 'W'
" 	elseif a:entry.type ==# 'R'  " Readability suggestions
" 		let l:type = 'I'
" 	elseif a:entry.type ==# 'C'  " Convention violation
" 		let l:type = 'W'
" 	else
" 		let l:type = 'M'           " Everything else is a message
" 	endif
" 	let a:entry.type = l:type
" endfunction

" let g:neomake_elixir_mycredo_maker = {
" 			\ 'exe': 'mix',
" 			\ 'args': ['credo', 'list', '%:p', '--format=oneline'],
" 			\ 'errorformat': '[%t] %. %f:%l:%c %m,[%t] %. %f:%l %m',
" 			\ 'postprocess': function('NeomakeCredoErrorType')
" 			\ }
