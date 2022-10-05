-- -------- Plugins --------
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'lervag/vimtex'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug('neoclide/coc.nvim', {['branch'] = 'release'})
Plug 'jenterkin/vim-autosource'
Plug 'tpope/vim-dispatch'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'startup-nvim/startup.nvim'
Plug 'honza/vim-snippets'
vim.call('plug#end')

