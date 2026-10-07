export ZSH="/usr/share/oh-my-zsh"
export ZSH_CUSTOM="$HOME/.config/zsh/oh-my-zsh-custom"
export EDITOR="nvim"

# set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="af-magic"

# which plugins would you like to load?
# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
# example format: plugins=(rails git textmate ruby lighthouse)
# add wisely, as too many plugins slow down shell startup
plugins=(fzf git kubectl sudo z zsh-autosuggestions zsh-syntax-highlighting)

# source oh my zsh
source $ZSH/oh-my-zsh.sh

# set aliases and functions
alias d=docker
alias dc=docker-compose
alias k=kubectl

# export AWS credentials for the default profile
awsenv() {
  export $(aws configure export-credentials --profile default --format env-no-export)
}

# export AWS credentials for the eks profile
awsenv-eks() {
  export $(aws configure export-credentials --profile eks --format env-no-export)
}

# load environment variables
function lenv() {
  if [[ $# -eq 1 ]]; then
    set -a
    source "$1"
    set +a
  else
    echo "Number of parameters should be 1"
  fi
}

# pnpm
# $path is a zsh array tied to $PATH; "${path[@]:#X}" drops any X entry
export PNPM_HOME="/home/vncsna/.local/share/pnpm"
ASDF_SHIMS="$HOME/.asdf/shims"
path=("$ASDF_SHIMS" "${path[@]:#$ASDF_SHIMS}")   # asdf shims first
path=("${path[@]:#$PNPM_HOME}" "$PNPM_HOME")     # pnpm bin last
export PATH
# pnpm end
