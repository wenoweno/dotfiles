" Specify a directory for plugins
call plug#begin('~/.vim/plugged')


Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'jiangmiao/auto-pairs'

Plug 'joshdick/onedark.vim'

Plug 'tiagovla/tokyodark.nvim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'alvan/vim-closetag'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'airblade/vim-gitgutter'
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'

Plug 'morhetz/gruvbox'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'jparise/vim-graphql'

Plug 'sindrets/diffview.nvim'

Plug 'christianchiarulli/nvcode-color-schemes.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update


" Initialize plugin system
call plug#end()

"nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
"nnoremap <C-f> :NERDTreeFind<CR>
" open NERDTree automatically
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree

set mouse+=a
set encoding=utf-8
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:WebDevIconsOS = 'Darwin'
let g:webdevicons_enable_airline_statusline = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
    \ "Staged"    : "#0ee375",  
    \ "Modified"  : "#d9bf91",  
    \ "Renamed"   : "#51C9FC",  
    \ "Untracked" : "#FCE77C",  
    \ "Unmerged"  : "#FC51E6",  
    \ "Dirty"     : "#FFBD61",  
    \ "Clean"     : "#87939A",   
    \ "Ignored"   : "#808080"   
    \ }                         

" Customize fzf colors to match your color scheme                                          
  " - fzf#wrap translates this to a set of `--color` options                                 
filetype plugin on

let g:NERDCustomDelimiters={
	\ 'javascriptreact': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
	\ 'typescriptreact': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

let g:NERDTreeIgnore = ['^node_modules$']
set termguicolors
"
"
au BufNewFile,BufRead *.prisma setfiletype graphql


" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync


" ctrlp
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


" Find files using Telescope command-line sugar.
nnoremap <silent> <C-p> <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
set number

set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set autoindent
" always uses spaces instead of tab characters
set expandtab

if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
  augroup END
endif

let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

"let g:onedark_style = 'deep'
"let g:onedark_diagnostics_undercurl = 0
"let g:onedark_italic_comment = 0 " By default it is 1
"let g:onedark_disable_terminal_colors = 1 " By default it is 0
"let g:onedark_disable_toggle_style = 1 " By default it is 0
" configure treesitter
"lua << EOF
"require'nvim-treesitter.configs'.setup {
  "ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  "highlight = {
    "enable = true,              -- false will disable the whole extension
  "},
"}
"EOF


syntax on
colorscheme onedark
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

hi clear CursorLine
augroup CLClear
    autocmd! ColorScheme * hi clear CursorLine
augroup END

set cursorline

"hi CursorLineNR cterm=bold
"augroup CLNRSet
    "autocmd! ColorScheme * hi CursorLineNR cterm=bold
"augroup END
"" Explorer
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


set whichwrap+=<,>,h,l

" sync open file with NERDTree
" " Check if NERDTree is open or active
function! IsNERDTreeOpen()        
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufEnter * call SyncTree()

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent>  K <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" 키 맵핑
" <F1> 폴
"ap <F1> v]}zf
map <C-t> :tabnew<cr>
nnoremap <silent> H :BufferPrevious<CR>
nnoremap <silent> L :BufferNext<CR>
nnoremap <silent>    <C-w> :BufferClose<CR>
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" <F2> 창이동
" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "typescript",
    "javascript",
    "go",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "scss"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF


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
"" Misc
"highlight TSError guifg=#F44747
"highlight TSPunctDelimiter guifg=#ABB2BF
"highlight TSPunctBracket guifg=#ABB2BF
"highlight TSPunctSpecial guifg=#ABB2BF

"" Constants
"highlight TSConstant guifg=#DCDCAA
"highlight TSConstBuiltin guifg=#569CD6
"" Not sure about this guy
"highlight TSConstMacro guifg=#4EC9B0
"highlight TSString guifg=#CE9178
"highlight TSStringRegex guifg=#CE9178
"highlight TSStringEscape guifg=#D7BA7D
"highlight TSCharacter guifg=#CE9178
"highlight TSNumber guifg=#B5CEA8
"highlight TSBoolean guifg=#569CD6
"highlight TSFloat guifg=#B5CEA8
"highlight TSAnnotation guifg=#DCDCAA
"highlight TSAttribute guifg=#FF00FF
"highlight TSNamespace guifg=#FF00FF


"" Functions
"" highlight TSFuncBuiltin guifg=#4EC9B0
"highlight TSFuncBuiltin guifg=#DCDCAA
"highlight TSFunction guifg=#DCDCAA
"highlight TSFuncMacro guifg=#DCDCAA
"highlight TSParameter guifg=#9CDCFE
"highlight TSParameterReference guifg=#9CDCFE
"highlight TSMethod guifg=#DCDCAA
"highlight TSField guifg=#9CDCFE
"highlight TSProperty guifg=#9CDCFE
"highlight TSConstructor guifg=#4EC9B0

"" Keywords
"highlight TSConditional guifg=#C586C0
"highlight TSRepeat guifg=#C586C0
"highlight TSLabel guifg=#FF00FF
"" Does not work for yield and return they should be diff then class and def
"highlight TSKeyword guifg=#569CD6
"highlight TSKeywordFunction guifg=#FF00FF
"highlight TSKeywordOperator guifg=#569CD6
"highlight TSOperator guifg=#ABB2BF
"highlight TSException guifg=#C586C0
"highlight TSType guifg=#4EC9B0
"highlight TSTypeBuiltin guifg=#FF00FF
"highlight TSStructure guifg=#FF00FF
"highlight TSInclude guifg=#C586C0

"" Variable
"highlight TSVariable guifg=#9CDCFE
"highlight TSVariableBuiltin guifg=#9CDCFE

"" Text
"highlight TSText guifg=#FF00FF
"highlight TSStrong guifg=#FF00FF
"highlight TSEmphasis guifg=#FF00FF
"highlight TSUnderline guifg=#FF00FF
"highlight TSTitle guifg=#FF00FF
"highlight TSLiteral guifg=#FF00FF
"highlight TSURI guifg=#FF00FF

"" Tags
"highlight TSTag guifg=#569CD6
"highlight TSTagDelimiter guifg=#5C6370
if has('nvim')
  inoremap <silent><expr> <C-k> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

inoremap <C-j> <Down>
inoremap <C-k> <Up>

"highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=bg guibg=DarkGreen
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkGreen
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkRed
highlight DiffChange cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkGreen
highlight DiffText   cterm=bold ctermfg=10 ctermbg=10 gui=none guifg=none guibg=DarkGreen

highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

"highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000


