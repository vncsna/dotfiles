------------------------------------------------
-- automatically install and set up packer.nvim
-- by @Iron-E and @khuedoan
------------------------------------------------

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
end

------------------------------------------------
-- configure nvim plugins with packer.nvim
------------------------------------------------

return require('packer').startup(function(use)
  use 'neovim/nvim-lspconfig'

  use 'wbthomason/packer.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup() end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- automatically set up packer config after install
  -- needs to be after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

------------------------------------------------
-- references
------------------------------------------------

-- https://github.com/wbthomason/packer.nvim
