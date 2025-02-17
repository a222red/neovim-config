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

nnoremap <SPACE> <Nop>
let mapleader = " "

let g:netrw_banner=0

call plug#begin()

Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'neovim/nvim-lspconfig'

" Plug 'simrat39/rust-tools.nvim'

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

Plug 'https://github.com/windwp/nvim-ts-autotag'

Plug 'ziglang/zig.vim'

Plug 'bkad/CamelCaseMotion'

Plug 'lvimuser/lsp-inlayhints.nvim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'folke/tokyonight.nvim'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'

Plug 'goldfeld/vim-seek'

Plug 'mrcjkb/rustaceanvim'

Plug 'chrisgrieser/nvim-lsp-endhints'
call plug#end()

let g:camelcasemotion_key = '<leader>'

tnoremap <Esc> <C-\><C-n>

source ~/.config/nvim/lua/treesitter.lua
source ~/.config/nvim/lua/lsp.lua
source ~/.config/nvim/lua/autopairs.lua
source ~/.config/nvim/lua/completions.lua
source ~/.config/nvim/lua/hoverinfo.lua
source ~/.config/nvim/lua/scroll.lua
" source ~/.config/nvim/lua/inlayhints.lua
source ~/.config/nvim/lua/neovide.lua
source ~/.config/nvim/lua/colorscheme.lua
source ~/.config/nvim/lua/bufline.lua

nnoremap <silent> gb :BufferLinePick<CR>
nnoremap <silent> gD :BufferLinePickClose<CR>

nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>

colorscheme catppuccin-mocha

filetype on
filetype plugin on

