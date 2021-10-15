" Highlight the active tab.
augroup TabColors
  autocmd!
  autocmd ColorScheme *
        \ highlight TabLineFill
        \   ctermfg=Black
        \   ctermbg=NONE
  autocmd ColorScheme *
        \ highlight TabLine
        \   ctermfg=NONE
        \   ctermbg=NONE
  autocmd ColorScheme *
        \ highlight TabLineSel
        \   ctermfg=NONE
        \   ctermbg=DarkBlue
  autocmd ColorScheme *
        \ highlight Title
        \   ctermfg=NONE
        \   ctermbg=NONE
augroup END
