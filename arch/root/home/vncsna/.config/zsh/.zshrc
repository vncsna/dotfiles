# path to your oh-my-zsh installation
export ZSH="/usr/share/oh-my-zsh"

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
plugins=(asdf git sudo zsh-z)

# source oh my zsh
source $ZSH/oh-my-zsh.sh

# set aliases and functions
source ~/.config/zsh/utils.sh

# set environment variables
source ~/.asdf/plugins/java/set-java-home.zsh
export NODE_OPTIONS="--experimental-repl-await"
export PNPM_HOME="/home/vncsna/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# source zsh syntax highlightning
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
