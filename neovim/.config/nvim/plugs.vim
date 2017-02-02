" ╦  ┌─┐┌┐┌┌─┐┬ ┬┌─┐┌─┐┌─┐┌─┐
" ║  ├─┤││││ ┬│ │├─┤│ ┬├┤ └─┐
" ╩═╝┴ ┴┘└┘└─┘└─┘┴ ┴└─┘└─┘└─┘

" Misc
" This shit bugs my JS code
" Plug 'sheerun/vim-polyglot'

" CSS
" CSS3 syntax (and syntax defined in some foreign specifications)
Plug 'hail2u/vim-css3-syntax'

" CSV
" Handling column separated data
Plug 'chrisbra/csv.vim'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" HTML
" HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'

" JSON
" A better JSON for Vim
Plug 'elzr/vim-json'

" Elm
Plug 'elmcast/elm-vim'

" VueJS
Plug 'posva/vim-vue'

" Markdown
" Markdown syntax highlighting
Plug 'plasticboy/vim-markdown'

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
Plug '1995eaton/vim-better-javascript-completion'
" Provides Tern-based JavaScript editing support
Plug 'ternjs/tern_for_vim', { 'do': 'npm install -g tern' }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'othree/javascript-libraries-syntax.vim'

" Tmux
" Vim plugin for tmux.conf
Plug 'tmux-plugins/vim-tmux'

" ╔╦╗┬┌─┐┌─┐
" ║║║│└─┐│
" ╩ ╩┴└─┘└─┘

Plug 'neomake/neomake'
" Dark powered asynchronous completion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Shows git diffs in the gutter
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'editorconfig/editorconfig-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'sheerun/vim-polyglot'
Plug 'godlygeek/tabular'
Plug 'wakatime/vim-wakatime'
Plug 'tpope/vim-fugitive'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" Concise vim script that implements some of TextMate's snippets features in Vim
Plug 'garbas/vim-snipmate'
Plug 'takac/vim-hardtime'
Plug 'mattn/webapi-vim'
" Vim-gista is a plugin for manipulating Gist in Vim
Plug 'lambdalisue/vim-gista'
" Ultimate undo history visualizer
Plug 'mbbill/undotree'

" ╔╗╔┌─┐┬  ┬┬┌─┐┌─┐┌┬┐┬┌─┐┌┐┌
" ║║║├─┤└┐┌┘││ ┬├─┤ │ ││ ││││
" ╝╚╝┴ ┴ └┘ ┴└─┘┴ ┴ ┴ ┴└─┘┘└┘

" Motions
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'
Plug 'kshenoy/vim-signature'

" Windows
"Plug 'ap/vim-buftabline'
Plug 'romgrk/winteract.vim'
Plug 'spolu/dwm.vim'
Plug 'justincampbell/vim-eighties'
Plug 'vim-scripts/scrollfix'

" ╔╦╗┌─┐─┐ ┬┌┬┐
"  ║ ├┤ ┌┴┬┘ │
"  ╩ └─┘┴ └─ ┴

Plug 'tpope/vim-surround'
" Comment stuff out
Plug 'tpope/vim-commentary'
Plug 'ReplaceWithRegister'
Plug 'christoomey/vim-titlecase'
Plug 'christoomey/vim-system-copy'
Plug 'michaeljsmith/vim-indent-object'
Plug 'wellle/targets.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'honza/vim-snippets'
" Improved incremental searching for Vim
Plug 'haya14busa/incsearch.vim'
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
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'joshdick/onedark.vim'
"Plug 'mkarmona/colorsbox'
"Plug 'jyota/vimColors'
"Plug 'fent/vim-frozen'
Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'crusoexia/vim-monokai'
Plug 'jacoborus/tender'
Plug 'ryanoasis/vim-devicons'
" Underlines word under cursor
Plug 'itchyny/vim-cursorword'
" Distraction-free writing in Vim
Plug 'junegunn/goyo.vim'
" Choose window to use, like tmux’s ‘display-pane’
Plug 't9md/vim-choosewin'
Plug 'morhetz/gruvbox'
