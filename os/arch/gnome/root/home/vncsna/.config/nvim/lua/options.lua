local opt = vim.opt

-- Editing. Language-specific indentation is overridden by ftplugins and
-- editorconfig, so this is just a sane default (e.g. Go uses tabs via ftplugin).
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true
opt.undofile = true
opt.clipboard = 'unnamedplus'

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.inccommand = 'nosplit'

-- UI
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.signcolumn = 'yes'
opt.breakindent = true
opt.scrolloff = 8
opt.termguicolors = true
opt.updatetime = 250

-- Completion
opt.completeopt = 'menuone,noselect'

-- Statusline (built-in, replaces lualine)
opt.laststatus = 3
opt.statusline = ' %f %h%m%r%=%l:%c  %p%% '

-- Colorscheme (built-in, replaces tokyonight)
vim.cmd.colorscheme('catppuccin')
