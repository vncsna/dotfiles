# Neovim cheat sheet

Leader is `<Space>`. Grouped by what you'll reach for most. Inlay hints (inferred types and
parameter names) are on automatically wherever the language server supports them.

## Find files & text (telescope)

| Key | Action |
|---|---|
| `<leader><space>` | Open buffers |
| `<leader>s.` | Resume the last picker |
| `<leader>sb` | Search in the current buffer |
| `<leader>sc` | Commands |
| `<leader>sd` | Grep the word under the cursor |
| `<leader>sD` | Diagnostics |
| `<leader>sf` | Find files |
| `<leader>sg` | Git status |
| `<leader>sh` | Help tags |
| `<leader>sk` | Keymaps |
| `<leader>sp` | Live grep (search text across the project) |
| `<leader>sr` | Recent files |
| `<leader>sR` | References |
| `<leader>ss` | Symbols in the current file |

## Code navigation (LSP)

| Key | Action |
|---|---|
| `gd` | Go to definition |
| `<C-o>` | Jump back (return after a definition) |
| `<C-i>` | Jump forward |
| `grr` | References |
| `gri` | Implementation |
| `grt` | Type definition |
| `gO` | Document symbols |
| `K` | Hover docs |
| `<C-S>` | Signature help (insert mode) |

## Editing code

| Key | Action |
|---|---|
| `grn` | Rename symbol |
| `gra` | Code action |
| `<leader>f` | Format buffer |
| `gcc` | Toggle comment on line |
| `gc` | Toggle comment on selection / motion |

## Diagnostics

| Key | Action |
|---|---|
| `]d` / `[d` | Next / previous diagnostic |
| `]D` / `[D` | Last / first diagnostic |
| `<C-W>d` | Show the diagnostic under the cursor |

## Git

| Key | Action |
|---|---|
| `<leader>g` | Lazygit (floating terminal) |
| `]c` / `[c` | Next / previous hunk |
| `<leader>hs` | Stage hunk (or selection) |
| `<leader>hr` | Reset hunk (or selection) |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |
| `<leader>hd` | Diff this |

## Terminal & LLM

| Key | Action |
|---|---|
| `<leader>z` | Toggle terminal |
| `<leader>a` | Open agent (opencode) |
| `<Esc>` | Leave terminal mode |

## Windows & movement

| Key | Action |
|---|---|
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move between splits |
| `j` / `k` | Move by screen line on wrapped lines |

## Plugin & health management

| Command | Action |
|---|---|
| `:Lazy` | Open the plugin manager |
| `:Lazy sync` | Install, update and clean plugins |
| `:Lazy update` | Update plugins |
| `:TSUpdate` | Update tree-sitter parsers |
| `:checkhealth` | Diagnose the config and LSP |
