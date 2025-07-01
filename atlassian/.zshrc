# Source common settings
[[ ~/.dotfiles/zsh/.zshrc.common ]] && source ~/.dotfiles/zsh/.zshrc.common

# ---------------------- BEGIN: Atlassian settings --------------------- #
# Alias Docker commands
alias docker_rmd='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

# Load ZMV
autoload zmv
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="/Users/fciner/.orbit/bin:$PATH"

. "$HOME/.local/bin/env"
# ---------------------- END: Atlassian settings ----------------------- #
