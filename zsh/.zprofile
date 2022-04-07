# Source .zshrc
[[ ~/.zshrc ]] && source ~/.zshrc

# Prioritize Homebrew-installed applications
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# ------------------------- Application Settings ------------------------
# NVM settings
# Installation: https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv
# Installation: https://github.com/pyenv/pyenv
eval "$(pyenv init --path)"
