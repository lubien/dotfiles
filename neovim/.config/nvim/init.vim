call plug#begin('~/.vim/plugged')
for plug in split(globpath('~/.config/nvim/plugs', '*.plug'), '\n')
  exe 'source' plug
endfor
call plug#end()

let g:ctrlp_custom_ignore = 'node_modules\|git'
set hidden

for setting in split(globpath('~/.config/nvim/settings', '*.vim'), '\n')
  exe 'source' setting
endfor

" Exit insert mode
:imap ii <Esc>

