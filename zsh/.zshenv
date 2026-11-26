[[ -f ~/.aliases ]] && source ~/.aliases

# Source secrets
if [[ -f "$HOME/.dotfiles/.secrets.local" ]]; then
    set -a
    source "$HOME/.dotfiles/.secrets.local"
    set +a
fi

# Vite+ bin (https://viteplus.dev). This file runs for every zsh, scripts
# included, so only PATH is set here; the `vp` shell wrapper is loaded for
# interactive shells in .zshrc.common.
typeset -U path PATH
path=(~/.vite-plus/bin(N-/) ${path:#$HOME/.vite-plus/fallback-bin} ~/.vite-plus/fallback-bin(N-/))
