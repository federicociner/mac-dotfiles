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
# ---------------------- END: Atlassian settings ----------------------- #
