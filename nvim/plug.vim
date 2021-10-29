if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()
" check for nvim, or just vim


" git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

" themes
Plug 'joshdick/onedark.vim'
Plug 'tiagovla/tokyodark.nvim'
Plug 'morhetz/gruvbox'

" icons
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

"" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" utils
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'nvim-lua/plenary.nvim' " for telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
"Plug 'romgrk/barbar.nvim'
Plug 'jparise/vim-graphql'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'frazrepo/vim-rainbow'

Plug 'voldikss/vim-floaterm'

call plug#end()

