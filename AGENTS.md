# AGENTS.md

`README.md` is the user-facing source of truth for purpose, setup order, layout and
verification. Read it for context and keep it in sync when provisioning changes.

## Layout

- Add config files only under `os/<profile>/root/`, mirroring the filesystem. Never place
  them elsewhere in the repo.
- `os/<profile>/pkgs.sh` — repo packages first, then AUR-only packages in a second `paru`
  call. Alphabetical within each block.

## Scripts

- Shebang is `#!/bin/bash -l`; `set -e` on the next line.
- Idempotent: guard with a check before acting (`if [[ ! ... ]]`) and use `--needed`/`--force`.
- Long-form flags (`--sync --quiet --needed --noconfirm`, `--backup --recursive`), not short ones.
- Use `$USER`/`$HOME` instead of hardcoded paths, except where a path must mirror the filesystem.
- Pin tool versions explicitly (see `asdf.sh`, `gcloud.sh`).
- Add the script to the README setup list when it changes provisioning order or adds a step.

## Config

- Neovim: modular Lua under `lua/`, plugin specs in `lua/plugins/*.lua`. Every keymap gets a
  `desc`. Prefer built-ins and Neovim's default LSP mappings over extra plugins.
- Comment non-obvious behavior only; skip comments that restate the code.

## Commits

Conventional commits, no scope, lowercase description (e.g. `fix: deploy tmux config to correct path`).
One commit per feature or fix. Do not commit or push unless asked.
