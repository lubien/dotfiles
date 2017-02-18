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
" Plug 'sheerun/vim-polyglot'

" css/less/sass/html color preview
Plug 'gko/vim-coloresque', {'for': ['css', 'sass', 'scss', 'vue']}

" +-+
" |C|
" +-+
"
" Write and run programs. Insert statements, idioms, comments etc
Plug 'vim-scripts/c.vim', {'for': ['c', 'cpp']}

" +-+-+-+
" |C|S|S|
" +-+-+-+

" CSS3 syntax (and syntax defined in some foreign specifications)
Plug 'hail2u/vim-css3-syntax', {'for': 'css'}

" +-+-+-+
" |C|S|V|
" +-+-+-+

" Handling column separated data
Plug 'chrisbra/csv.vim', {'for': 'csv'}

" +-+-+-+-+-+-+
" |E|l|i|x|i|r|
" +-+-+-+-+-+-+

Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}

Plug 'slashmili/alchemist.vim', {'for': 'elixir'}

" +-+-+-+
" |E|l|m|
" +-+-+-+

Plug 'elmcast/elm-vim', {'for': 'elm'}

" +-+-+-+-+-+-+-+
" |H|a|s|k|e|l|l|
" +-+-+-+-+-+-+-+

" Custom Haskell Vimscripts
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}

" A completion plugin for Haskell, using ghc-mod
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}

" A collection of vimscripts for Haskell development.
Plug 'dag/vim2hs', {'for': 'haskell'}

" +-+-+-+-+
" |H|T|M|L|
" +-+-+-+-+

" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'

" Provides support for expanding abbreviations similar to emmet
Plug 'mattn/emmet-vim', {'for': ['html', 'vue', 'jsx']}

" +-+-+-+-+
" |J|S|O|N|
" +-+-+-+-+

" A better JSON for Vim
Plug 'elzr/vim-json', {'for': 'json'}

" +-+-+-+-+-+-+-+-+
" |M|a|r|k|d|o|w|n|
" +-+-+-+-+-+-+-+-+

" Markdown syntax highlighting
" Plug 'plasticboy/vim-markdown'

" +-+-+-+-+-+-+-+-+-+-+
" |J|a|v|a|S|c|r|i|p|t|
" +-+-+-+-+-+-+-+-+-+-+

Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'jsx', 'vue'] }

Plug 'mxw/vim-jsx', { 'for': ['javascript', 'jsx', 'vue'] }

Plug '1995eaton/vim-better-javascript-completion', { 'for': ['javascript', 'jsx', 'vue'] }

" Provides Tern-based JavaScript editing support
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern', 'for': ['javascript', 'jsx', 'vue'] }

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'jsx', 'vue'] }

" Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'jsx', 'vue'] }

" +-+-+-+-+
" |T|m|u|x|
" +-+-+-+-+

" Vim plugin for tmux.conf
Plug 'tmux-plugins/vim-tmux', {'for': 'tmux'}

" +-+-+-+
" |V|u|e|
" +-+-+-+

Plug 'posva/vim-vue', {'for': 'vue'}

" ╔╦╗┬┌─┐┌─┐
" ║║║│└─┐│
" ╩ ╩┴└─┘└─┘

" Asynchronous linting and make framework
Plug 'neomake/neomake'

" Dark powered asynchronous completion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Shows git diffs in the gutter
" Plug 'airblade/vim-gitgutter'

" Show a diff using Vim its sign column
Plug 'mhinz/vim-signify'

" EditorConfig plugin for Vim
Plug 'editorconfig/editorconfig-vim'

" Better whitespace highlighting for Vim
Plug 'ntpeters/vim-better-whitespace'

" A solid language pack for Vim
" Plug 'sheerun/vim-polyglot'

" Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" Vim plugin for automatic time tracking and metrics generated from your
" programming activity
Plug 'wakatime/vim-wakatime'

" A Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

" Interpret a file by function and cache file automatically
" Plug 'MarcWeber/vim-addon-mw-utils'

" Some utility functions for vim
" Plug 'tomtom/tlib_vim'

" Plug 'takac/vim-hardtime'

" Vim interface to Web API
" Plug 'mattn/webapi-vim'

" Vim-gista is a plugin for manipulating Gist in Vim
Plug 'lambdalisue/vim-gista'

" Ultimate undo history visualizer
" Plug 'mbbill/undotree'

" ╔╗╔┌─┐┬  ┬┬┌─┐┌─┐┌┬┐┬┌─┐┌┐┌
" ║║║├─┤└┐┌┘││ ┬├─┤ │ ││ ││││
" ╝╚╝┴ ┴ └┘ ┴└─┘┴ ┴ ┴ ┴└─┘┘└┘

" Motions
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

" Plug 'Shougo/denite.nvim'

" Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree'

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Toggle, display and navigate marks
" Plug 'kshenoy/vim-signature'

" Windows
"Plug 'ap/vim-buftabline'
" Plug 'romgrk/winteract.vim'

" Tiled Window Management
" Plug 'spolu/dwm.vim'

" Plug 'justincampbell/vim-eighties'

Plug 'vim-scripts/scrollfix'

" ╔╦╗┌─┐─┐ ┬┌┬┐
"  ║ ├┤ ┌┴┬┘ │
"  ╩ └─┘┴ └─ ┴

Plug 'tpope/vim-surround'

" Comment stuff out
Plug 'tpope/vim-commentary'

Plug 'ReplaceWithRegister'

" Teach Vim about titlecase, with support for motions and text objects
" Plug 'christoomey/vim-titlecase'

" Plug 'christoomey/vim-system-copy'

Plug 'michaeljsmith/vim-indent-object'

Plug 'wellle/targets.vim'

Plug 'jiangmiao/auto-pairs'

" Concise vim script that implements some of TextMate's snippets features in Vim
" Plug 'garbas/vim-snipmate'

" The ultimate snippet solution for Vim
Plug 'SirVer/ultisnips'

" vim-snipmate default snippets
Plug 'honza/vim-snippets'

" Improved incremental searching for Vim
" Plug 'haya14busa/incsearch.vim'

" Visually select increasingly larger regions of text
Plug 'terryma/vim-expand-region'

" Open URI with your favorite browser from your most favorite editor
Plug 'tyru/open-browser.vim'

" ╔╦╗┬ ┬┌─┐┌┬┐┌─┐
"  ║ ├─┤├┤ │││├┤
"  ╩ ┴ ┴└─┘┴ ┴└─┘

" Plug 'powerman/vim-plugin-AnsiEsc'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'edkolev/tmuxline.vim'

Plug 'ryanoasis/vim-devicons'

" Plug 'tyrannicaltoucan/vim-quantum'

" Plug 'joshdick/onedark.vim'

Plug 'morhetz/gruvbox' " pretty good

" Plug 'mkarmona/colorsbox'

" Plug 'jyota/vimColors'

" Plug 'fent/vim-frozen'

" Plug 'kristijanhusak/vim-hybrid-material'

" Plug 'crusoexia/vim-monokai'

" Plug 'jacoborus/tender'

" Underlines word under cursor
Plug 'itchyny/vim-cursorword'

" Distraction-free writing in Vim
" Plug 'junegunn/goyo.vim'

" Choose window to use, like tmux’s ‘display-pane’
Plug 't9md/vim-choosewin'
