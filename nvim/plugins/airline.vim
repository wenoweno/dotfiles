let g:airline#extensions#tabline#enabled = 1              " vim-airline 버퍼 목록 켜기
let g:airline#extensions#tabline#fnamemod = ':t'          " vim-airline 버퍼 목록 파일명만 출력
let g:airline#extensions#tabline#buffer_nr_show = 1       " buffer number를 보여준다
let g:airline#extensions#tabline#buffer_nr_format = '%s:' " buffer number format

nnoremap <C-S-t> :enew<Enter>         
nnoremap <C-F5> :bprevious!<Enter>  
nnoremap <C-F6> :bnext!<Enter>        
nnoremap <C-F4> :bp <BAR> bd #<Enter> 


