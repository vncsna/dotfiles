return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    cmd = 'Telescope',
    keys = {
      { '<leader><space>', '<cmd>Telescope buffers<CR>', desc = 'Buffers' },
      { '<leader>s.', '<cmd>Telescope resume<CR>', desc = 'Resume' },
      { '<leader>sb', '<cmd>Telescope current_buffer_fuzzy_find<CR>', desc = 'Search in buffer' },
      { '<leader>sc', '<cmd>Telescope commands<CR>', desc = 'Commands' },
      { '<leader>sd', '<cmd>Telescope grep_string<CR>', desc = 'Grep word' },
      { '<leader>sD', '<cmd>Telescope diagnostics<CR>', desc = 'Diagnostics' },
      { '<leader>sf', '<cmd>Telescope find_files<CR>', desc = 'Find files' },
      { '<leader>sg', '<cmd>Telescope git_status<CR>', desc = 'Git status' },
      { '<leader>sh', '<cmd>Telescope help_tags<CR>', desc = 'Help tags' },
      { '<leader>sk', '<cmd>Telescope keymaps<CR>', desc = 'Keymaps' },
      { '<leader>sp', '<cmd>Telescope live_grep<CR>', desc = 'Live grep' },
      { '<leader>sr', '<cmd>Telescope oldfiles<CR>', desc = 'Recent files' },
      { '<leader>sR', '<cmd>Telescope lsp_references<CR>', desc = 'References' },
      { '<leader>ss', '<cmd>Telescope lsp_document_symbols<CR>', desc = 'Document symbols' },
    },
    config = function()
      require('telescope').setup({})
      pcall(require('telescope').load_extension, 'fzf')
    end,
  },
}
