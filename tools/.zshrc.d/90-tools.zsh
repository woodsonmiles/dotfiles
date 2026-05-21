# env vars
export TMPDIR=/mnt/big/tmp

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

#auto complete
source <(kubectl completion zsh)
source <(zarf completion zsh)
source <(firefly completion zsh)
source <(grype completion zsh)

