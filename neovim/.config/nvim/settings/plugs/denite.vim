call denite#custom#var('file_rec', 'command',
			\ ['ag', '--hidden', '--ignore', '.git', 
			\ '--ignore', '/node_modules', '--ignore',
			\ '/_build', '--follow', '--nocolor', '-g', ''])

map <Leader>p :Denite file_rec<CR>
map <Leader>b :Denite buffer<CR>
map <Leader>l :Denite line<CR>

" function s:complete_command(...)
" 	return "execute \"" + a:1 + " input('" + a:1 + "')\""
" endfunction

" " Menus

" let s:menus = {}

" " Gista

" let s:menus.dein = {
" 	\ 'description': 'Dein commands'
" 	\ }

" " \ ['[dein#direct_install] install a plugin directly', 'execute input(":Dein direct-install")'],
" let s:menus.dein.command_candidates = [
" 	\ ['[dein#direct_install] install a plugin directly', s:complete_command(':Dein direct-install')],
" 	\ ['[dein#source] :source plugins', 'execute input(":Dein source")'],
" 	\ ['[dein#rollback] rollback plugins', 'execute input(":Dein rollback")'],
" 	\ ['[dein#update] update a plugin', 'execute input(":Dein update")'],
" 	\ ['[dein#check_clean] check unused plugins directories', 'execute input(":Dein check-clean")'],
" 	\ ['[dein#clear_state] clear the dein state file', 'execute input(":Dein clear-state")'],
" 	\ ['[dein#get_updates_log] show the dein update log', 'execute input(":Dein updates-log")'],
" 	\ ['[original] seach vim plugins from GitHub', 'execute input(":Dein search")'],
" 	\ ['[dein#recache_runtimepath] re-make runtimepath cache and execute :helptags', 'execute input(":Dein recache-runtimepath")'],
" 	\ ['[dein#each] execute shell command for each plugins', 'execute input(":Dein each")'],
" 	\ ['[dein#check_lazy_plugins] check nonsense lazy plugins', 'execute input(":Dein check-lazy-plugins")'],
" 	\ ['[dein#reinstall] reinstall a plugin', 'execute input(":Dein reinstall")'],
" 	\ ['[dein#get_log] show the dein log', 'execute input(":Dein log")'],
" 	\ ['[dein#check_install] check plugins installation', 'execute input(":Dein check-install")'],
" 	\ ['[dein#install] install a plugin', 'execute input(":Dein install")'],
" 	\ ['[dein#check_update] check plugins update', 'execute input(":Dein check-update")'],
" 	\ ['[original] clean plugins directories', 'execute input(":Dein clean")'],
" 	\ ['[original] print a list of configured bundles', ':Dein list']
" 	\ ]


" call denite#custom#var('menu', 'menus', s:menus)
