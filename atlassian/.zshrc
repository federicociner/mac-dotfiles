# Source common settings
[[ -r ~/.dotfiles/zsh/.zshrc.common ]] && source ~/.dotfiles/zsh/.zshrc.common

# ---------------------- BEGIN: Atlassian settings --------------------- #
# PATH entries (jenv, util-linux, bun, cargo, ~/.local/bin, Vite+) are all set
# in .zshrc.common, which skips any directory that does not exist.
autoload -Uz zmv

alias rovodev='uv run --project /Users/fciner/code/atlassian/acra-python rovodev'
# ---------------------- END: Atlassian settings ----------------------- #
