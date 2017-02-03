set nocompatible

call plug#begin('~/.vim/plugged')
	source ~/.config/nvim/plugs.vim
call plug#end()

source ~/.config/nvim/settings/main.vim

" Source all plugin specific settingss
for setting in split(globpath('~/.config/nvim/settings/plugs', '*.vim'), '\n')
  exe 'source' setting
endfor

" Project specific `.nvimrc`
:set exrc
set secure

" Deoplete
let g:deoplete#enable_at_startup = 1
