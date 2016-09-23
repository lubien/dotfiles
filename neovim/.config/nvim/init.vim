call plug#begin('~/.vim/plugged')
for plug in split(globpath('~/.config/nvim/plugs', '*.plug'), '\n')
  exe 'source' plug
endfor
call plug#end()

let g:ctrlp_custom_ignore = 'node_modules\|git'
set hidden

" Exit insert mode
:imap ii <Esc>

" Enter Winteract mode
nmap gw :InteractiveWindow<CR>

" Theres a trick here: when I hit C-Space,
" activate focus by dwm plugin then call
" vim-eighties resize
"nmap <C-Space> :<Plug>DWMFocus<CR>
function! FocusWindow()
	execute "<Plug>DWMFocus"
	"execute 'EightiesResize'
endfunction

:nnoremap <C-Space> :call FocusWindow()<CR>

" Move between splits and buffers
"nnoremap <C-M> :bnext<CR>
"nnoremap <C-N> :bprev<CR>
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" Move between terminal splits
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l

" Break habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" NERDTree
map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>

" Theme
let base16colorspace=256

:set relativenumber
autocmd InsertEnter * :set number norelativenumber
autocmd InsertLeave * :set nonumber relativenumber

syntax enable
filetype plugin on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme one
:let g:airline_theme='kolor'
let g:airline#extensions#tabline#enabled = 1
set shiftwidth=2
:set list
set listchars=tab:-\ ,eol:¬
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight NonText ctermfg=5
highlight SpecialKey ctermfg=5

" If you keep mistakely pressing the touchpad you'll understand me
set mouse=

" Linting
"let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint']
"let g:neomake_javascript_eslint_exe = 'eslint'
"let g:neomake_javascript_eslint_args= ['--reporter=compact']
autocmd! BufWritePost,BufEnter * Neomake

set updatetime=250

