set nocompatible

" If dein is not installed, install
if (!isdirectory(expand("$HOME/.vim/repos/github.com/Shougo/dein.vim")))
	call system(expand("mkdir -p $HOME/.vim/repos/github.com"))
	call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.vim/repos/github.com/Shougo/dein.vim"))
endif

set runtimepath+=~/.vim/repos/github.com/Shougo/dein.vim/

let dein_dir = expand('~/.vim')

if dein#load_state(dein_dir)
	call dein#begin(dein_dir)

	call dein#add('Shougo/dein.vim')
	call dein#add('haya14busa/dein-command.vim')

	source ~/.config/nvim/plugs.vim

	call dein#end()
  call dein#save_state()
endif

" call plug#begin('~/.vim/plugged')
" 	source ~/.config/nvim/plugs.vim
" call plug#end()

source ~/.config/nvim/settings/main.vim

" Source all plugin specific settingss
for setting in split(globpath('~/.config/nvim/settings/plugs', '*.vim'), '\n')
  exe 'source' setting
endfor
