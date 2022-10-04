-- Use spaces instead of tabs
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true

vim.o.exrc = true -- Run local vimrc file in directories
vim.o.relativenumber = true -- Use relative numbers
vim.o.hidden = true -- Keep files open
vim.o.clipboard = 'unnamedplus'

vim.o.incsearch = true -- Highlight search while writing
vim.o.hlsearch = false -- Do not highlight search after enter set ignorecase
vim.o.smartcase = true -- If a capital letter is used, use case-sensitive search

vim.o.scrolloff = 8 -- Automatically scroll to keep 8 lines in the bottom

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
vim.call('plug#end')

-- -------- LaTeX options --------
vim.g.vimtex_view_method = 'zathura'

-- -------- Color theme --------
vim.cmd('colorscheme gruvbox')
vim.api.nvim_set_hl(0, 'Normal', {bg=none})

-- -------- Keybinds / Remaps --------
vim.g.mapleader = " "

-- Find files using Telescope command-line sugar.
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')

-- NERDTree commands
vim.keymap.set('n', '<leader>n', '<cmd>NERDTreeFocus<cr>')
vim.keymap.set('n', '<C-n>', '<cmd>NERDTree<cr>')
vim.keymap.set('n', '<leader>b', '<cmd>NERDTreeToggle<cr>')
vim.keymap.set('n', '<C-f>', '<cmd>NERDTreeFind<cr>')

-- -------- Autocommands --------

TrimWhitespace = function(patterns)
    local save = vim.fn.winsaveview()
    vim.api.nvim_exec('keeppatterns %s/\\s\\+$//e', false)
    vim.fn.winrestview(save)
end

local TrimWhitespaceAugroup = vim.api.nvim_create_augroup('TrimWhitespace', {clear = true})
vim.api.nvim_create_autocmd('BufWritePre', {
    callback = TrimWhitespace
})

