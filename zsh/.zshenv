[[ -f ~/.aliases ]] && source ~/.aliases

# Source secrets
if [[ -f "$HOME/.dotfiles/.secrets.local" ]]; then
    set -a
    source "$HOME/.dotfiles/.secrets.local"
    set +a
fi
