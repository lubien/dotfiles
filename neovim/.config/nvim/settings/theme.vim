set background=dark
syntax enable
filetype plugin indent on

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"let base16colorspace=256
"set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm

colorscheme quantum-mod " onedark, quantum

:set number relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber
:set list
set cursorline
set cursorcolumn

"set showtabline=2
"let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna' " tender, luna, cobalt2
let g:airline_powerline_fonts = 1

set shiftwidth=4
"set listchars=tab:-\ ,eol:¬
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none
" highlight NonText ctermfg=5
" highlight SpecialKey ctermfg=5

" Devicons
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='λ'

" NERDTree
let NERDTreeShowHidden=1
autocmd FileType nerdtree setlocal nolist
