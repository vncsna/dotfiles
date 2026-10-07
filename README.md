# dotfiles

Provisioning for Arch Linux + GNOME (Wayland), user `vncsna`.

## Setup

Clone the repo and run the scripts from `os/`, in order. Stop and ask before continuing if a step fails.

```bash
git clone https://github.com/vncsna/dotfiles.git
cd dotfiles/os
./paru.sh                   # bootstrap the paru AUR helper
./arch/gnome/pkgs.sh        # pacman + AUR packages
./config.sh arch/gnome      # deploy the profile's root/ tree into /
./zsh.sh                    # zsh login shell + oh-my-zsh plugins
./asdf.sh                   # runtimes (go, helm, kubectl, node, python) + npm language servers
./docker.sh                 # Docker daemon + user group
./git.sh                    # global git identity and defaults
./gcloud.sh                 # optional; then: gcloud components install gke-gcloud-auth-plugin
```

## Layout

Profiles live under `os/<os>/<de>/`; the active one is `os/arch/gnome/`. Its `root/` mirrors the
filesystem, so `root/home/vncsna/.config/zsh/.zshrc` lands at `/home/vncsna/.config/zsh/.zshrc`.

## Notes

- Run scripts from `os/`; `config.sh` takes the profile as a relative path.
- `~/.zshenv` sets `ZDOTDIR=~/.config/zsh`, so the real zsh config is `~/.config/zsh/.zshrc`.
- asdf shims live in `~/.asdf/shims`; `.zshrc` puts them on `PATH`.
- `~/.tmux.conf` enables vi mode keys and a 256-color terminal; `tmux` is installed by `pkgs.sh`.
- nvim bootstraps `lazy.nvim` on first launch. LSP servers: `gopls` (asdf), `lua-language-server`
  and `rust-analyzer` (pacman), `pyright`/`ts_ls` (npm via `asdf.sh`). Telescope needs `fd`/`ripgrep`,
  git integration uses `lazygit`, the `+` register needs `wl-clipboard`, and `<leader>a` launches
  `opencode`.
- Tool versions (asdf, gcloud) are pinned to what the profile was written against; packages track
  the rolling repos. Newer is fine unless compatibility requires otherwise.

## Verify

- `getent passwd vncsna | cut -d: -f7` is `/usr/bin/zsh`.
- `zsh -lic 'echo $ZDOTDIR; echo $ZSH_CUSTOM'` prints `$HOME/.config/zsh` and `$HOME/.config/zsh/oh-my-zsh-custom`.
- `asdf current` lists the pinned versions.
- `nvim --headless '+lua vim.cmd("qa")'` exits without errors.
