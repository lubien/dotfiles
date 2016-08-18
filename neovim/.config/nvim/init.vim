call plug#begin('~/.vim/plugged')

Plug 'vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'neomake/neomake'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ap/vim-buftabline'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'romgrk/winteract.vim'
Plug 'spolu/dwm.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'justincampbell/vim-eighties'
Plug 'elixir-lang/vim-elixir'
Plug 'neovimhaskell/haskell-vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'marcopaganini/termschool-vim-theme'
Plug 'joshdick/onedark.vim'
Plug 'mkarmona/colorsbox'
Plug 'jyota/vimColors'
Plug 'fent/vim-frozen'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
"Plug 'Shougo/deoplete.nvim'

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
filetype plugin indent on
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
colorscheme onedark
:let g:airline_theme='kolor'
let g:airline#extensions#tabline#enabled = 1
set shiftwidth=2
:set list
set listchars=tab:-\ ,eol:¬
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight NonText ctermfg=5
highlight SpecialKey ctermfg=5

" Linting
"let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = 'xo'
let g:neomake_javascript_eslint_args= ['--reporter=compact']
autocmd! BufWritePost,BufEnter * Neomake

" JavaScript stuff
au FileType javascript setlocal tabstop=2 shiftwidth=2
let g:javascript_plugin_jsdoc = 1

" C stuff
au FileType c setlocal tabstop=2 shiftwidth=2

" Haskell stuff
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`

" Markdown stuff
let g:vim_markdown_folding_disabled = 1
" TODO:
" au FileType md setlocal conceallevel=2

set updatetime=250

au FileType hs,elm setlocal expandtab shiftwidth=2
