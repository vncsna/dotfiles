## dotfiles

Provisioning for Arch Linux + GNOME (Wayland), user `vncsna`.

### Layout

- `os/config.sh <profile>` — copies a profile's `root/` tree into `/` (`etc/` → `/etc`, `home/` → `/home`)
- `os/paru.sh` — bootstraps the `paru` AUR helper
- `os/arch/gnome/pkgs.sh` — pacman + AUR packages for the `arch/gnome` profile
- `os/zsh.sh` — sets zsh as the login shell and installs oh-my-zsh plugins
- `os/asdf.sh` — installs language/tool runtimes via asdf
- `os/docker.sh` — enables the Docker daemon and adds the user to the `docker` group
- `os/gcloud.sh` — installs the Google Cloud SDK
- `os/git.sh` — global git identity and defaults

Profiles live under `os/<os>/<de>/`; the active one is `os/arch/gnome/`. Its `root/`
mirrors the filesystem, so `root/home/vncsna/.config/zsh/.zshrc` lands at
`/home/vncsna/.config/zsh/.zshrc`.

### Manual setup

```bash
git clone https://github.com/vncsna/dotfiles.git
cd dotfiles/os
./paru.sh
./arch/gnome/pkgs.sh
./config.sh arch/gnome
./zsh.sh
./asdf.sh
./docker.sh
./git.sh
# optional
./gcloud.sh
```

Scripts must be run from `os/` (e.g. `config.sh` takes the profile as a relative path).

### LLM setup prompt

Paste the following into an agent with shell access on a fresh machine:

```text
Provision a fresh Arch Linux machine with GNOME (Wayland) for user `vncsna`.

Repo: https://github.com/vncsna/dotfiles
Active profile: `os/arch/gnome/`.

Clone the repo and run the scripts from the `os/` directory, in this order.
Stop and ask before continuing if any step fails.

1. `./paru.sh`          # bootstrap the paru AUR helper
2. `./arch/gnome/pkgs.sh`  # pacman + AUR packages
3. `./config.sh arch/gnome` # deploy the profile's root/ tree into /
4. `./zsh.sh`           # zsh login shell + oh-my-zsh plugins
5. `./asdf.sh`          # golang, helm, kubectl, nodejs, python
6. `./docker.sh`
7. `./git.sh`
8. `./gcloud.sh`        # optional; afterwards run:
                        #   gcloud components install gke-gcloud-auth-plugin

Context and gotchas:
- `config.sh` copies `root/etc/*` into `/etc` and `root/home/*` into `/home`, then
  chowns `/home/vncsna`. It deploys `~/.zshenv`, `~/.config/zsh/.zshrc`, the custom
  oh-my-zsh theme `~/.config/zsh/oh-my-zsh-custom/themes/af-magic.zsh-theme`,
  `~/.tmux.conf`, and `~/.config/git/ignore`.
- `~/.zshenv` sets `ZDOTDIR=~/.config/zsh`, so the real zsh config is
  `~/.config/zsh/.zshrc`, not `~/.zshrc`.
- `zsh.sh` installs the `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins
  into `~/.config/zsh/oh-my-zsh-custom/plugins`, which is the `ZSH_CUSTOM` set by `.zshrc`.
- `asdf` shims live in `~/.asdf/shims`; `.zshrc` prepends them to `PATH`.
- Package and tool versions are pinned to what the profile was written against. Newer
  versions are fine unless a specific version is required for compatibility.
- Do not modify files outside the profile or unrelated system configuration.

Verify when done:
- `getent passwd vncsna | cut -d: -f7` is `/usr/bin/zsh`.
- `zsh -lic 'echo $ZDOTDIR; echo $ZSH_CUSTOM'` prints `~/.config/zsh` and
  `~/.config/zsh/oh-my-zsh-custom`, with no errors.
- `asdf current` lists golang 1.24.1, helm 3.16.0, kubectl 1.22.0, nodejs 25.0.0,
  python 3.13.11, all installed.
- `git config --global --list` matches `os/git.sh`.
- Re-running `./config.sh arch/gnome` produces no config drift (deployed files equal
  the profile's `root/` files).
```
