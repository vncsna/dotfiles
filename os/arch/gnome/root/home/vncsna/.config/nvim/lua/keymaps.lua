local map = vim.keymap.set

-- Window navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
map('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Window up' })
map('n', '<C-l>', '<C-w>l', { desc = 'Window right' })

-- Move by screen line when wrapping
map('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, desc = 'Down' })
map('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, desc = 'Up' })

-- Leave terminal insert mode
map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
