" ╔╦╗┬ ┬┌─┐┌┬┐┌─┐
"  ║ ├─┤├┤ │││├┤
"  ╩ ┴ ┴└─┘┴ ┴└─┘

" Project specific .nvimrc
:set exrc

" Secure external .nvimrc
set secure

if (has("nvim"))
	" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
	set termguicolors
endif

" Color
" set t_Co=256

" Dark Side (https://youtu.be/3xQmJ_vxHB4)
set background=dark

" I like colors
syntax enable

" I like knowing file types too
filetype plugin indent on

" Othe good ones are: hybrid_material, quantum-mod, onedark, quantum, gruvbox
colorscheme one

" Show relative line numbers except current
set number relativenumber

" Insert mode shows proper line numbers
autocmd InsertEnter * :set norelativenumber

" Leaving insert mode returns the original number config
autocmd InsertLeave * :set relativenumber

" Shows whitespaces
set list

" Highlight cursor's current line and columns
" set cursorline cursorcolumn
" set cursorline

" Some plugin like vim-gitgutter depends on it
" Default is 4 seconds, too large
set updatetime=250

" ╔╦╗┌─┐─┐ ┬┌┬┐
"  ║ ├┤ ┌┴┬┘ │
"  ╩ └─┘┴ └─ ┴

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Fix backspace and delete problems
" See: http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

" Highlight column 80
set colorcolumn=80

" Break lines after 80 columns
set textwidth=80

" .editorconfig-less projects made me use 2 spaces by default :/
" set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" set noexpandtab

" Ninja buffers
set hidden

" Remember cursor last position
augroup vimrc-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Highlight search results
set hlsearch

" Incremental search, search as you type
set incsearch

" Ignore case when searching
set ignorecase

" Ignore case when searching lowercase
set smartcase

" Stop highlighting on Enter
map <CR> :noh<CR>

" Vue filetype is "vue.html.javascript.css" which Neomake can't lint
autocmd BufNewFile,BufRead *.vue set filetype=vue conceallevel=0
