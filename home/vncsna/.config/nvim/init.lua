-- By default title is off.
-- Needed for detecting window
-- as neovim instance (sworkstyle)

-------------------------------------------------
-- nvim
-------------------------------------------------

-- alias
local g = vim.g
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

-- map leader key to ,
g.mapleader = ','

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
-- nvim.packer
-------------------------------------------------

require('plugins')

require('lsp')

require('telescope').setup {
  defaults = { file_ignore_patterns = {"node_modules"} }
}

-- automatically run :PackerCompile when changed
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

-------------------------------------------------
-- references
-------------------------------------------------

-- https://github.com/wbthomason/packer.nvim
-- https://github.com/nanotee/nvim-lua-guide
-- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua
