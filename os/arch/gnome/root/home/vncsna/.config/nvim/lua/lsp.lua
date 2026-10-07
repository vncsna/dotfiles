-- LSP setup. Navigation, rename, code action, diagnostics and signature help
-- come from Neovim's built-in defaults (gd/gD here, grn/gra/grr/gri/grt/gO,
-- ]d/[d, <C-S>). This module only adds what core does not provide.
local M = {}

function M.on_attach(client, bufnr)
  local map = function(lhs, rhs, desc)
    vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
  end

  map('gd', vim.lsp.buf.definition, 'Go to definition')

  if client:supports_method('textDocument/formatting') then
    map('<leader>f', function()
      vim.lsp.buf.format({ bufnr = bufnr })
    end, 'Format buffer')
  end
end

function M.setup()
  vim.diagnostic.config({
    severity_sort = true,
    virtual_text = true,
    float = { border = 'rounded' },
  })

  vim.lsp.inlay_hint.enable(true)

  vim.lsp.config('*', {
    capabilities = require('blink.cmp').get_lsp_capabilities(),
    on_attach = M.on_attach,
  })

  vim.lsp.config('gopls', {
    settings = {
      gopls = {
        analyses = { unusedparams = true },
        staticcheck = true,
      },
    },
  })

  vim.lsp.config('lua_ls', {
    settings = {
      Lua = {
        runtime = { version = 'LuaJIT' },
        diagnostics = { globals = { 'vim' } },
        telemetry = { enable = false },
        workspace = { checkThirdParty = false },
      },
    },
  })

  vim.lsp.enable({ 'gopls', 'lua_ls', 'pyright', 'rust_analyzer', 'ts_ls' })
end

return M
