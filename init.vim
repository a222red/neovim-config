set background=dark

" Interop between vim clipboard and system clipboard
set clipboard+=unnamedplus

set completeopt=menuone,noselect

set number
set relativenumber
" set cursorline
set wildmenu

set colorcolumn=80

set title

" 4 space indent
set expandtab
set shiftwidth=4
set tabstop=4

let g:netrw_banner=0

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'neovim/nvim-lspconfig'

Plug 'simrat39/rust-tools.nvim'

Plug 'L3MON4D3/LuaSnip', {'tag': 'v1.*', 'do': 'make install_jsregexp'}

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'saadparwaiz1/cmp_luasnip'

Plug 'windwp/nvim-autopairs'

Plug 'lewis6991/hover.nvim'

Plug 'petertriho/nvim-scrollbar'

Plug 'tpope/vim-commentary'

Plug 'ThePrimeagen/vim-be-good'

Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }

call plug#end()

source ~/.config/nvim/lua/treesitter.lua
source ~/.config/nvim/lua/lsp.lua
source ~/.config/nvim/lua/autopairs.lua
source ~/.config/nvim/lua/completions.lua
source ~/.config/nvim/lua/hoverinfo.lua
source ~/.config/nvim/lua/scroll.lua

