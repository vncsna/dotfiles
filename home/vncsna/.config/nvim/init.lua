-------------------------------------------------
-- nvim
-------------------------------------------------

-- alias
local g = vim.g
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

-- map leader key to ,
g.mapleader = ','

-- map tab size to 2
cmd [[
  set autoindent
  set expandtab
  set tabstop=2
  set smartindent
  set softtabstop=2
  set shiftwidth=2
]]

-- map copy to clipboard
map('v', '<leader>y', 'y', {noremap = true})
map('v', '<leader>y', '"+y', {noremap = true})
map('n', '<leader>y', 'y', {noremap = true})
map('n', '<leader>y', '"+y', {noremap = true})
map('n', '<leader>Y', '"+yg_', {noremap = true})

-- map paste to clipboard
map('v', '<leader>p', 'p', {noremap = true})
map('v', '<leader>p', '"+p', {noremap = true})
map('v', '<leader>P', '"+P', {noremap = true})
map('n', '<leader>p', 'p', {noremap = true})
map('n', '<leader>p', '"+p', {noremap = true})
map('n', '<leader>P', '"+P', {noremap = true})

-- map escape to terminal mode escape
map('t', '<Esc>', '<C-\\><C-n>', {noremap = true}) 

-------------------------------------------------
-- nvim plugins
-------------------------------------------------

require('plugins')

-- npm i -g pyright
require'lspconfig'.pyright.setup{}

-- npm install -g typescript typescript-language-server
require'lspconfig'.tsserver.setup{}

------------------------------------------------
-- references
-------------------------------------------------
-- https://github.com/wbthomason/packer.nvim
-- https://github.com/nanotee/nvim-lua-guide
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua

