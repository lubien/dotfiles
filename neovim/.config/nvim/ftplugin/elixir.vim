" let g:neomake_elixir_enabled_makers = []
" let g:neomake_elixir_elixir_maker = {
"       \ 'exe': 'elixirc',
"       \ 'args': [
"         \ '--ignore-module-conflict', '--warnings-as-errors',
"         \ '--app', 'mix', '--app', 'ex_unit',
"         \ '-o', '$TMPDIR', '%:p'
"       \ ],
"       \ 'errorformat':
"           \ '%E** %s %f:%l: %m,' .
"           \ '%W%f:%l'
"       \ }
