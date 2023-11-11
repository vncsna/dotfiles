# git checkout with fzf
alias gc='git checkout $(git branch --all | fzf)'

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

# sync database
function sync {
  if [[ ! -f ${DB_PATH} ]]; then
    if [[ $# -eq 0 ]] || [[ $1 = s* ]]; then
      autossh -f -M 0 -N stag && sleep 4
      pg_dump --no-acl --no-owner --format=custom --compress=9 --dbname "${DB_STAG}" > "${DB_PATH}"
    elif [[ $1 = p* ]]; then
      autossh -f -M 0 -N prod && sleep 4
      pg_dump --no-acl --no-owner --format=custom --compress=9 --dbname "${DB_PROD}" > "${DB_PATH}"
    elif [[ $1 = w* ]]; then
      autossh -f -M 0 -N ware && sleep 4
      pg_dump --no-acl --no-owner --format=custom --compress=9 --schema-only --dbname "${DB_WARE}" > "${DB_PATH}"
    fi
    killall autossh
  fi

  DB_NAME=postgres://${USER}:@localhost:5432/local
  pg_restore --no-acl --no-owner --clean --dbname "${DB_NAME}" "${DB_PATH}"
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

# kill pw-loopback
function killpw() {
  killall --quiet pw-loopback
}

# remove nvim swap files
function cleanswap() {
  rm -rf ~/.local/share/nvim/swap/*
}
