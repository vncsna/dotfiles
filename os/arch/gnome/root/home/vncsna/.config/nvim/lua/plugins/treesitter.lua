return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').install({
        'bash',
        'dockerfile',
        'go',
        'gomod',
        'hcl',
        'json',
        'lua',
        'markdown',
        'markdown_inline',
        'python',
        'rust',
        'sql',
        'tsx',
        'typescript',
        'yaml',
      })

      vim.api.nvim_create_autocmd('FileType', {
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end,
  },
}
