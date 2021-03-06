let g:javascript_plugin_jsdoc = 1

let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_undefined      = "¿"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_arrow_function = "⇒"

setlocal shiftwidth=2
setlocal tabstop=2
setlocal shiftwidth=2
setlocal conceallevel=0
"setlocal foldmethod=syntax
"setlocal foldlevel=2

" Run node system with Control-r
:nnoremap <F9> :terminal node %<CR>

" Code complation
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" Annoying preview split
set completeopt-=preview
