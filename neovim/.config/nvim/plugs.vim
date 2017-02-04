" Headers: http://patorjk.com/software/taag/
" Header 1: Calvin S
" Header 2: Digital

" ╦  ┌─┐┌┐┌┌─┐┬ ┬┌─┐┌─┐┌─┐┌─┐
" ║  ├─┤││││ ┬│ │├─┤│ ┬├┤ └─┐
" ╩═╝┴ ┴┘└┘└─┘└─┘┴ ┴└─┘└─┘└─┘

" +-+-+-+-+
" |M|i|s|c|
" +-+-+-+-+

" This shit bugs my JS code
" call dein#add('sheerun/vim-polyglot')

" css/less/sass/html color preview
call dein#add('gko/vim-coloresque', {'on_ft': ['css', 'sass', 'scss', 'vue']})

" +-+
" |C|
" +-+
"
" Write and run programs. Insert statements, idioms, comments etc
call dein#add('vim-scripts/c.vim', {'on_ft': ['c', 'cpp']})

" +-+-+-+
" |C|S|S|
" +-+-+-+

" CSS3 syntax (and syntax defined in some foreign specifications)
call dein#add('hail2u/vim-css3-syntax')

" +-+-+-+
" |C|S|V|
" +-+-+-+

" Handling column separated data
call dein#add('chrisbra/csv.vim', {'on_ft': 'csv'})

" +-+-+-+-+-+-+
" |E|l|i|x|i|r|
" +-+-+-+-+-+-+

call dein#add('elixir-lang/vim-elixir', {'on_ft': 'elixir'})

call dein#add('slashmili/alchemist.vim', {'on_ft': 'elixir'})

" +-+-+-+
" |E|l|m|
" +-+-+-+

call dein#add('elmcast/elm-vim', {'on_ft': 'elm'})

" +-+-+-+-+-+-+-+
" |H|a|s|k|e|l|l|
" +-+-+-+-+-+-+-+

" Custom Haskell Vimscripts
call dein#add('neovimhaskell/haskell-vim', {'on_ft': 'haskell'})

" A completion plugin for Haskell, using ghc-mod
call dein#add('eagletmt/neco-ghc', {'on_ft': 'haskell'})

" A collection of vimscripts for Haskell development.
call dein#add('dag/vim2hs', {'on_ft': 'haskell'})

" +-+-+-+-+
" |H|T|M|L|
" +-+-+-+-+

" HTML5 omnicomplete and syntax
call dein#add('othree/html5.vim')

" Provides support for expanding abbreviations similar to emmet
call dein#add('mattn/emmet-vim', {'on_ft': ['html', 'vue', 'jsx']})

" +-+-+-+-+
" |J|S|O|N|
" +-+-+-+-+

" A better JSON for Vim
call dein#add('elzr/vim-json', {'on_ft': 'json'})

" +-+-+-+-+-+-+-+-+
" |M|a|r|k|d|o|w|n|
" +-+-+-+-+-+-+-+-+

" Markdown syntax highlighting
call dein#add('plasticboy/vim-markdown', {'on_ft': 'markdown'})

" +-+-+-+-+-+-+-+-+-+-+
" |J|a|v|a|S|c|r|i|p|t|
" +-+-+-+-+-+-+-+-+-+-+

call dein#add('pangloss/vim-javascript', { 'on_ft': ['javascript', 'jsx', 'vue'] })

call dein#add('mxw/vim-jsx', { 'on_ft': ['javascript', 'jsx', 'vue'] })

call dein#add('1995eaton/vim-better-javascript-completion', { 'on_ft': ['javascript', 'jsx', 'vue'] })

" Provides Tern-based JavaScript editing support
call dein#add('ternjs/tern_for_vim', { 'build': 'npm install -g tern', 'on_ft': ['javascript', 'jsx', 'vue'] })

call dein#add('carlitux/deoplete-ternjs', { 'build': 'npm install -g tern', 'on_ft': ['javascript', 'jsx', 'vue'] })

call dein#add('othree/javascript-libraries-syntax.vim', { 'on_ft': ['javascript', 'jsx', 'vue'] })

" +-+-+-+-+
" |T|m|u|x|
" +-+-+-+-+

" Vim plugin for tmux.conf
call dein#add('tmux-plugins/vim-tmux', {'on_ft': 'tmux'})

" +-+-+-+
" |V|u|e|
" +-+-+-+

call dein#add('posva/vim-vue', {'on_ft': 'vue'})

" ╔╦╗┬┌─┐┌─┐
" ║║║│└─┐│
" ╩ ╩┴└─┘└─┘

" Asynchronous linting and make framework
call dein#add('neomake/neomake')

" Dark powered asynchronous completion framework
call dein#add('Shougo/deoplete.nvim', { 'build': ':UpdateRemotePlugins' })

" Shows git diffs in the gutter
call dein#add('airblade/vim-gitgutter')

call dein#add('mhinz/vim-signify')

call dein#add('editorconfig/editorconfig-vim')

" Better whitespace highlighting for Vim
call dein#add('ntpeters/vim-better-whitespace')

call dein#add('sheerun/vim-polyglot')

call dein#add('godlygeek/tabular')

call dein#add('wakatime/vim-wakatime')

call dein#add('tpope/vim-fugitive')

" Interpret a file by function and cache file automatically
" call dein#add('MarcWeber/vim-addon-mw-utils')

" Some utility functions for vim
" call dein#add('tomtom/tlib_vim')

" call dein#add('takac/vim-hardtime')

" Vim interface to Web API
" call dein#add('mattn/webapi-vim')

" Vim-gista is a plugin for manipulating Gist in Vim
call dein#add('lambdalisue/vim-gista')

" Ultimate undo history visualizer
call dein#add('mbbill/undotree')

" ╔╗╔┌─┐┬  ┬┬┌─┐┌─┐┌┬┐┬┌─┐┌┐┌
" ║║║├─┤└┐┌┘││ ┬├─┤ │ ││ ││││
" ╝╚╝┴ ┴ └┘ ┴└─┘┴ ┴ ┴ ┴└─┘┘└┘

" Motions
" call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'build': './install --all' })

" call dein#add('junegunn/fzf.vim')

call dein#add('Shougo/denite.nvim')

call dein#add('easymotion/vim-easymotion')

call dein#add('scrooloose/nerdtree')

" Seamless navigation between tmux panes and vim splits
call dein#add('christoomey/vim-tmux-navigator')

call dein#add('kshenoy/vim-signature')

" Windows
"call dein#add('ap/vim-buftabline')
call dein#add('romgrk/winteract.vim')

" Tiled Window Management
call dein#add('spolu/dwm.vim')

" call dein#add('justincampbell/vim-eighties')

call dein#add('vim-scripts/scrollfix')

" ╔╦╗┌─┐─┐ ┬┌┬┐
"  ║ ├┤ ┌┴┬┘ │
"  ╩ └─┘┴ └─ ┴

call dein#add('tpope/vim-surround')

" Comment stuff out
call dein#add('tpope/vim-commentary')

call dein#add('ReplaceWithRegister')

call dein#add('christoomey/vim-titlecase')

call dein#add('christoomey/vim-system-copy')

call dein#add('michaeljsmith/vim-indent-object')

call dein#add('wellle/targets.vim')

call dein#add('jiangmiao/auto-pairs')

" Concise vim script that implements some of TextMate's snippets features in Vim
" call dein#add('garbas/vim-snipmate')

" The ultimate snippet solution for Vim
call dein#add('SirVer/ultisnips')

" vim-snipmate default snippets
call dein#add('honza/vim-snippets')

" Improved incremental searching for Vim
call dein#add('haya14busa/incsearch.vim')

" Visually select increasingly larger regions of text
call dein#add('terryma/vim-expand-region')

" Open URI with your favorite browser from your most favorite editor
call dein#add('tyru/open-browser.vim')

" ╔╦╗┬ ┬┌─┐┌┬┐┌─┐
"  ║ ├─┤├┤ │││├┤
"  ╩ ┴ ┴└─┘┴ ┴└─┘

" call dein#add('powerman/vim-plugin-AnsiEsc')

call dein#add('vim-airline/vim-airline')

call dein#add('vim-airline/vim-airline-themes')

call dein#add('edkolev/tmuxline.vim')

call dein#add('ryanoasis/vim-devicons')

" call dein#add('tyrannicaltoucan/vim-quantum')

" call dein#add('joshdick/onedark.vim')

call dein#add('morhetz/gruvbox') " pretty good

" call dein#add('mkarmona/colorsbox')

" call dein#add('jyota/vimColors')

" call dein#add('fent/vim-frozen')

call dein#add('kristijanhusak/vim-hybrid-material')

" call dein#add('crusoexia/vim-monokai')

" call dein#add('jacoborus/tender')

" Underlines word under cursor
call dein#add('itchyny/vim-cursorword')

" Distraction-free writing in Vim
call dein#add('junegunn/goyo.vim')

" Choose window to use, like tmux’s ‘display-pane’
call dein#add('t9md/vim-choosewin')
