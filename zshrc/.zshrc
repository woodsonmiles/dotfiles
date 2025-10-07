# Source modular configuration files
if [ -d ~/.zshrc.d ]; then
    for config in ~/.zshrc.d/*.zsh; do
        [ -f "$config" ] && source "$config"
    done
fi

# Load machine-specific configuration
[ -f ~/.zshrc.local ] && source ~/.zshrc.local