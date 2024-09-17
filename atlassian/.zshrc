# Source common settings
[[ ~/.dotfiles/zsh/.zshrc.common ]] && source ~/.dotfiles/zsh/.zshrc.common

# ---------------------- BEGIN: Atlassian settings --------------------- #
# Alias Docker commands
alias docker_rmd='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

# Load ZMV
autoload zmv
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"

# Add Automation codebase binaries to path
export PATH="$HOME/code/barrel/bin:$PATH"

# Atlassian VPN
export ATLASSIAN_VPN_MFA_DEFAULT=push

# AFM git config file
[[ ~/.afm-git-configrc ]] && source ~/.afm-git-configrc

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# ---------------------- END: Atlassian settings ----------------------- #
