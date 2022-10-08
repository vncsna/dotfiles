# git checkout with fzf
alias gc='git checkout $(git branch --all | fzf)'

# load environment variables fom env*.sh
function lenv() {
  if [[ $# -eq 1 ]]; then
    set -a
    source "$1"
    set +a
  else
    echo "Number of parameters should be 1"
  fi
}

# 1password cli helper
function ope {
  who=$(op whoami)

  if [[ $? != 0 ]]; then 
    eval $(op signin)
  fi

  if [[ -f "$PWD/.env" ]]; then
    op run --env-file=$PWD/.env -- $@
  else
    op run --env-file=$HOME/personal/.env -- $@
  fi  
}

# bitwarden cli help
function bwe {

}

# kill pw-loopback
function kpw() {
  killall --quiet pw-loopback
}

# remove nvim swap files
function cswap() {
  rm -rf ~/.local/share/nvim/swap/*
}
