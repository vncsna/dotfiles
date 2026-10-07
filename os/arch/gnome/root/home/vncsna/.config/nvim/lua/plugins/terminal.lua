return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<leader>z]],
      direction = 'horizontal',
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return math.floor(vim.o.columns * 0.4)
        end
      end,
      start_in_insert = true,
      insert_mappings = false,
      persist_size = true,
      close_on_exit = true,
      shade_terminals = true,
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)

      local Terminal = require('toggleterm.terminal').Terminal

      local lazygit = Terminal:new({ cmd = 'lazygit', direction = 'float', hidden = true })
      vim.keymap.set('n', '<leader>g', function()
        lazygit:toggle()
      end, { desc = 'Lazygit' })

      local agent = Terminal:new({ cmd = 'opencode', direction = 'float', hidden = true })
      vim.keymap.set('n', '<leader>a', function()
        agent:toggle()
      end, { desc = 'Agent' })
    end,
  },
}
