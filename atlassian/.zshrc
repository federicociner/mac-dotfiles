# Source common settings
[[ ~/.dotfiles/zsh/.zshrc.common ]] && source ~/.dotfiles/zsh/.zshrc.common

# ---------------------- BEGIN: Atlassian settings --------------------- #
# Load ZMV
autoload zmv
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"

# jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# Aliases
alias rovodev='uv run --project /Users/fciner/code/atlassian/acra-python rovodev'
# ---------------------- END: Atlassian settings ----------------------- #

# bun completions
[ -s "/Users/fciner/.bun/_bun" ] && source "/Users/fciner/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# cargo
. "$HOME/.cargo/env"
export PATH="$HOME/.local/bin:$PATH"
