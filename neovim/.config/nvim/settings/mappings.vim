" ╔╦╗┌─┐┌─┐┌─┐┬┌┐┌┌─┐┌─┐
" ║║║├─┤├─┘├─┘│││││ ┬└─┐
" ╩ ╩┴ ┴┴  ┴  ┴┘└┘└─┘└─┘

" Leader
let mapleader="\<Space>"

" Exit insert mode
imap ii <Esc>
imap jj <Esc>
imap jk <Esc>

" Refresh settings
nnoremap <S-R> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>fR :so ~/.config/nvim/init.vim<CR>

" Install Plugs
map <F12> :PlugInstall<CR>

" Dominate the world
nmap ; :

" Clipboard
noremap YY "+y<CR>
" noremap PP "+gP<CR>
" noremap XX "+x<CR>

" Fix scroll vertically when going up and down
" :nnoremap j jzz
" :nnoremap k kzz

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
" vmap < <gv
" vmap > >gv

" +-+-+-+-+-+-+
" |B|u|f|f|e|r|
" +-+-+-+-+-+-+

" Write
nnoremap <Leader>fs :w<CR>

" Close
" nnoremap <Leader>q :<CR>
nnoremap <Leader>bd :Bclose<CR>
nnoremap <Leader>bk :bd!<CR>

" Use Tab to switch buffer
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

" Use Ctrl-Tab and Alt-Tab to switch tab
map    <C-Tab>  :tabnext<CR>
imap   <C-Tab>  <C-O>:tabnext<CR>
map    <M-Tab>  :tabprev<CR>
imap   <M-Tab>  <C-O>:tabprev<CR>

" <Leader>[1-9] move to window [1-9]
for s:i in range(1, 9)
    execute 'nnoremap <Leader>' . s:i . ' :' . s:i . 'wincmd w<CR>'
endfor

" <Leader>b[1-9] move to buffer [1-9]
for s:i in range(1, 9)
    execute 'nnoremap <Leader>b' . s:i . ' :b' . s:i . '<CR>'
endfor

" +-+-+-+-+-+-+
" |S|p|l|i|t|s|
" +-+-+-+-+-+-+

" Close
nnoremap <Leader>wd <C-w>q<CR>

" Make splits
nnoremap <Leader>sp :sp<CR>
nnoremap <Leader>vsp :vsp<CR>

" Resize splits
" nnoremap <Leader>sfv <C-w>_
" nnoremap <Leader>sfh <C-w>|
" nnoremap <Leader>ssr <C-w>=

" Move between splits using Control as prefix
" nnoremap <C-h> <C-\><C-n><C-w>h
" nnoremap <C-j> <C-\><C-n><C-w>j
" nnoremap <C-k> <C-\><C-n><C-w>k
" nnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <Leader>wh <C-\><C-n><C-w>h
nnoremap <Leader>wj <C-\><C-n><C-w>j
nnoremap <Leader>wk <C-\><C-n><C-w>k
nnoremap <Leader>wl <C-\><C-n><C-w>l

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
