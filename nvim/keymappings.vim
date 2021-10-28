
" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')



" Find files using Telescope command-line sugar.
nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

map <C-t> :enew<cr>
nnoremap <silent> H :bprevious!<CR>
nnoremap <silent> L :bnext!<CR>
nnoremap <silent>    <C-w> :bp <BAR> bd #<Enter>
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" <F2> 창이동

inoremap <C-j> <Down>
inoremap <C-k> <Up>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

au BufNewFile,BufRead *.prisma setfiletype graphql
