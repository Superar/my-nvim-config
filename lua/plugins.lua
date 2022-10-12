-- -------- Plugins --------
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim' -- Needed for telescope
Plug 'nvim-telescope/telescope.nvim' -- Fuzzy file finder
Plug 'gruvbox-community/gruvbox' -- Color theme
Plug 'lervag/vimtex' -- LaTeX
Plug 'preservim/nerdtree' -- File tree
Plug('neoclide/coc.nvim', {['branch'] = 'release'}) -- Intellisense
Plug 'jenterkin/vim-autosource' -- Auto source workspace .vimrc
Plug 'tpope/vim-dispatch' -- Run make command in background
Plug 'numToStr/Comment.nvim' -- Easy commenting with gcc
Plug 'startup-nvim/startup.nvim' -- Startup dashboard
Plug 'honza/vim-snippets' -- Snippets
Plug 'vim-autoformat/vim-autoformat' -- Autoformatting code
Plug 'folke/which-key.nvim' -- Show keybind menu
Plug 'nvim-telescope/telescope-file-browser.nvim' -- File browser for telescope
Plug 'tpope/vim-surround' -- Surround text with ys commands
Plug 'nvim-lualine/lualine.nvim' -- Bottom status bar
Plug 'kyazdani42/nvim-web-devicons' -- Icons for the status bar
Plug 'wellle/targets.vim' -- Enhanced text objects
vim.call('plug#end')

