" ╔╦╗┬ ┬┌─┐┌┬┐┌─┐
"  ║ ├─┤├┤ │││├┤
"  ╩ ┴ ┴└─┘┴ ┴└─┘

" Project specific .nvimrc
:set exrc

" Secure external .nvimrc
set secure

" Color
set t_Co=256

" Dark Side (https://youtu.be/3xQmJ_vxHB4)
set background=dark

" I like colors
syntax enable

" I like knowing file types too
filetype plugin indent on

" Othe good ones are: quantum-mod, onedark, quantum
colorscheme hybrid_material

" Show relative line numbers except current
:set number relativenumber

" Insert mode shows proper line numbers
autocmd InsertEnter * :set norelativenumber

" Leaving insert mode returns the original number config
autocmd InsertLeave * :set relativenumber

" Shows whitespaces
:set list

" Highlight cursor's current line and columns
set cursorline cursorcolumn

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

" My tabs indent settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set noexpandtab

" Ninja buffers
set hidden

" Remember cursor last position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Vue filetype is "vue.html.javascript.css" which Neomake can't lint
autocmd BufNewFile,BufRead *.vue set filetype=vue

" ╔╦╗┌─┐┌─┐┌─┐┬┌┐┌┌─┐┌─┐
" ║║║├─┤├─┘├─┘│││││ ┬└─┐
" ╩ ╩┴ ┴┴  ┴  ┴┘└┘└─┘└─┘

" Leader is ,
let mapleader=','

" Exit insert mode
:imap ii <Esc>

" Refresh settings
:nnoremap <S-R> :so ~/.config/nvim/init.vim<CR>

" Install Plugs
map <F12> :PlugInstall<CR>

" Dominate the world
nmap ; :

" Clipboard
noremap YY "+y<CR>
noremap PP "+gP<CR>
noremap XX "+x<CR>

" Fix scroll vertically when going up and down
:nnoremap j jzz
:nnoremap k kzz

" Disable highlighting after search
nmap <Leader>nh :nohlsearch<CR>

" Disable keyboard arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <left> <NOP>
inoremap <right> <NOP>
inoremap <up> <NOP>
inoremap <down> <NOP>

" If you keep mistakely pressing the touchpad you'll understand me
set mouse=

" Persist visual after reindent
vmap < <gv
vmap > >gv

" +-+-+-+-+-+-+
" |B|u|f|f|e|r|
" +-+-+-+-+-+-+

" Delete buffer
nnoremap <C-C> :bd<CR>

" +-+-+-+-+-+-+
" |S|p|l|i|t|s|
" +-+-+-+-+-+-+

" Move between splits using Control as prefix
:nnoremap <C-h> <C-\><C-n><C-w>h
:nnoremap <C-j> <C-\><C-n><C-w>j
:nnoremap <C-k> <C-\><C-n><C-w>k
:nnoremap <C-l> <C-\><C-n><C-w>l
"
" Move between splits Clockwise
nnoremap <C-x> <C-W>w

" Move between splits Anticlockwise
nnoremap <C-z> <C-W>W

" +-+-+-+-+
" |T|a|b|s|
" +-+-+-+-+

" Switch between tabs using h and n
nnoremap <S-h> :tabprev<CR>
nnoremap <S-l> :tabnext<CR>

" New tab
nnoremap <S-n> :tabnew<CR>

" Close tab
nnoremap <S-c> :tabclose<CR>

" Close all other tabs
nnoremap <S-X> :tabonly<CR>
