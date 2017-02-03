call denite#custom#var('file_rec', 'command',
			\ ['ag', '--hidden', '--ignore', '.git', 
			\ '--ignore', '/node_modules', '--ignore',
			\ '/_build', '--follow', '--nocolor', '-g', ''])

map <Leader>p :Denite file_rec<CR>
map <Leader>b :Denite buffer<CR>
map <Leader>l :Denite line<CR>
