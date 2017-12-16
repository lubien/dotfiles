:source /home/joao/.vim/plugged/elm-vim/ftplugin/elm.vim

let g:elm_format_autosave = 1
autocmd BufWritePre *.elm call elm#Format()

