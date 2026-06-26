# env vars
export TMPDIR=/mnt/big/tmp

# aliases
alias md="mkdir -p"
alias f="firefly"
alias k="kubectl"

# funtions
function fr () {
  [ $# -lt 2 ] && { echo "Usage: fr <search> <replace>"; return 1; }
  export SEARCH="$1" REPLACE="$2"
  rg -l -F --hidden "$1" | while IFS= read -r file; do
    perl -pi -e 's/\Q$ENV{SEARCH}\E/$ENV{REPLACE}/g' "$file"
  done
}

function qf () {
  git commit -a --fixup=HEAD
}

function qc () {
  git commit -am "$*"
}

function cb () {
  git branch | grep -v "main" | grep -v "master" | xargs git branch -d
 }

#auto complete
source <(kubectl completion zsh)
source <(zarf completion zsh)
source <(firefly completion zsh)
source <(grype completion zsh)

