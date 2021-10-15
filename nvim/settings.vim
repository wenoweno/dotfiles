
set mouse+=a
set encoding=utf-8
set termguicolors

filetype plugin on
set termguicolors
set number

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set autoindent
" always uses spaces instead of tab characters
set expandtab
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif


hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine cterm-bold
augroup END
set cursorline
set whichwrap+=<,>,h,l
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkGreen
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkRed
highlight DiffChange cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkGreen
highlight DiffText   cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkGreen

highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
