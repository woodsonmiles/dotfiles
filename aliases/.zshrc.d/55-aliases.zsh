# env vars
export TMPDIR=$HOME/tmp/
# aliases
alias md="mkdir -p"
alias f="firefly"
alias k="kubectl"

# funtions
function qf () {
  git commit -a --fixup=HEAD
}

function qc () {
  git commit -am "$*"
}

function cb () {
  git branch | grep -v "main" | grep -v "master" | xargs git branch -d
 }

