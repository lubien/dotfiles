set background=dark
syntax enable
filetype plugin on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let base16colorspace=256
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm

colorscheme onedark

:set relativenumber
autocmd InsertEnter * :set number norelativenumber
autocmd InsertLeave * :set nonumber relativenumber
:set list

:let g:airline_theme='kolor'
let g:airline#extensions#tabline#enabled = 1

set shiftwidth=2
set listchars=tab:-\ ,eol:¬
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight NonText ctermfg=5
highlight SpecialKey ctermfg=5

