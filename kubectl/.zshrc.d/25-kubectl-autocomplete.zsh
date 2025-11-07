# kubectl autocomplete - Lazy loaded
kubectl() {
    unset -f kubectl
    # Only source the completion if it hasn't been done yet
    if ! type _kubectl &>/dev/null; then
        # https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/#enable-shell-autocompletion
        source <(kubectl completion zsh)
    fi
    command kubectl "$@"
}
