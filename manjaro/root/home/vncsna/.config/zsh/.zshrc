# Manjaro configuration ###############

# Use powerline
USE_POWERLINE="true"

# Source manjaro-zsh-configuration
if [[ -e "/usr/share/zsh/manjaro-zsh-config" ]]; then
  source "/usr/share/zsh/manjaro-zsh-config"
fi
# Use manjaro zsh prompt
if [[ -e "/usr/share/zsh/manjaro-zsh-prompt" ]]; then
  source "/usr/share/zsh/manjaro-zsh-prompt"
fi

# User configuration ##################

plugins=(asdf git sudo)

alias d=docker
alias dc=docker-compose
alias k=kubectl

export NODE_OPTIONS="--experimental-repl-await"
export PNPM_HOME="~/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

source ~/.config/zsh/envi.sh
source ~/.config/zsh/util.sh

if [ -f ~/.local/share/google-cloud-sdk/path.zsh.inc ]; then
  source ~/.local/share/google-cloud-sdk/path.zsh.inc
fi

if [ -f ~/.local/share/google-cloud-sdk/completion.zsh.inc ]; then
  source ~/.local/share/google-cloud-sdk/completion.zsh.inc
fi
